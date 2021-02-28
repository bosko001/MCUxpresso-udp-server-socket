#include "lwip/opt.h"

#if LWIP_SOCKET

#include "lwip/sockets.h"

#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"

#include "dnet.h"

#define BUFLEN 128

static void
udp_server_thread(void *arg)
{
	int sock = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
	assert(sock != -1);

	struct sockaddr_in addr_me, addr_other;
	socklen_t slen = sizeof addr_other;

	memset(&addr_me, 0, sizeof addr_me);

	addr_me.sin_family = AF_INET;
	addr_me.sin_port = htons(12345);
	addr_me.sin_addr.s_addr = htonl(INADDR_ANY);

	int error = bind(sock, (struct sockaddr*)&addr_me, sizeof addr_me);
	assert(error != -1);

	char buf[BUFLEN];

	while (1) {
		PRINTF("Waiting for data...\n\r");

		int bytes_received = recvfrom(sock, buf, BUFLEN, MSG_MORE, (struct sockaddr*)&addr_other, &slen);
		if (bytes_received == -1) {
			PRINTF("Failed to receive data\n\r");
			continue;
		}

		buf[bytes_received] = 0;

		PRINTF("Received packet from %s:%d\n\r", inet_ntoa(addr_other.sin_addr), ntohs(addr_other.sin_port));
		PRINTF("Data: %s\n\r" , buf);
	}

	close(sock);
}

/*!
 * @brief Main function
 */
int main(void)
{
	BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitDebugConsole();

    DnetConfig config = dnet_init("192.168.0.132", NULL, NULL, NULL);

    dnet_start_new_thread("udp_server_thread", udp_server_thread, NULL);

    vTaskStartScheduler();

    /* Will not get here unless a task calls vTaskEndScheduler ()*/
    return 0;
}
#endif
