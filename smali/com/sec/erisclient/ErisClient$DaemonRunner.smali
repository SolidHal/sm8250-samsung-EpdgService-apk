.class Lcom/sec/erisclient/ErisClient$DaemonRunner;
.super Ljava/lang/Thread;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/ErisClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DaemonRunner"
.end annotation


# instance fields
.field private mDaemonName:Ljava/lang/String;

.field private mTimer:J

.field final synthetic this$0:Lcom/sec/erisclient/ErisClient;


# direct methods
.method public constructor <init>(Lcom/sec/erisclient/ErisClient;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .line 1089
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1087
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mTimer:J

    .line 1090
    iput-object p2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    .line 1091
    return-void
.end method

.method private checkpoint(Z)V
    .locals 9
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1111
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mTimer:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    .line 1112
    iput-wide v0, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mTimer:J

    .line 1113
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1114
    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v7, 0xea60

    cmp-long v2, v2, v7

    if-gtz v2, :cond_2

    .line 1115
    if-eqz p1, :cond_1

    const-wide/16 v5, 0xc8

    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1120
    :goto_0
    return-void

    .line 1118
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public exit()V
    .locals 4

    .line 1094
    const-string v0, "ErisClient"

    const-string v1, "DaemonRunner:exit()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->interrupt()V

    .line 1096
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v1}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1097
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1099
    :try_start_0
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1100
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1103
    :catch_0
    move-exception v2

    .line 1104
    .local v2, "ignore":Ljava/lang/RuntimeException;
    const-string v3, "Ignore RuntimeException"

    invoke-static {v0, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1101
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 1102
    .local v2, "ignore":Ljava/lang/InterruptedException;
    const-string v3, "Ignore exception"

    invoke-static {v0, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :goto_1
    nop

    .line 1097
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1107
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .line 1124
    const-string v0, "ErisClient"

    const-string v1, "DaemonRunner:run()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->checkpoint(Z)V

    .line 1127
    const-string v1, "ErisClient"

    const-string v2, "DaemonRunner:run() stopping daemon..."

    invoke-static {v1, v2}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Lcom/sec/erisclient/ErisClient;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1129
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    .line 1130
    :try_start_1
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v3}, Lcom/sec/erisclient/ErisClient;->access$300(Lcom/sec/erisclient/ErisClient;)[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 1131
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v3}, Lcom/sec/erisclient/ErisClient;->access$300(Lcom/sec/erisclient/ErisClient;)[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sec/erisclient/ErisClient$TimeoutThread;->interrupt()V

    .line 1132
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v3}, Lcom/sec/erisclient/ErisClient;->access$300(Lcom/sec/erisclient/ErisClient;)[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1129
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1135
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1136
    :try_start_2
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1137
    :goto_1
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1138
    invoke-direct {p0, v2}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->checkpoint(Z)V

    goto :goto_1

    .line 1140
    :cond_2
    const-string v1, "ErisClient"

    const-string v3, "DaemonRunner:run() starting daemon..."

    invoke-static {v1, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1142
    :goto_2
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1143
    invoke-direct {p0, v2}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->checkpoint(Z)V

    goto :goto_2

    .line 1145
    :cond_3
    const-string v1, "ErisClient"

    const-string v3, "DaemonRunner:run() daemon is started"

    invoke-static {v1, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    sget-object v3, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    invoke-static {v1, v3}, Lcom/sec/erisclient/ErisClient;->access$400(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisError;)V

    .line 1148
    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1152
    .local v1, "address":Landroid/net/LocalSocketAddress;
    :goto_3
    :try_start_3
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v3}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1153
    nop

    .line 1159
    :try_start_4
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v2}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1160
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v2}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1161
    .local v2, "in":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    iget-object v4, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v4}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/erisclient/ErisClient;->access$500(Lcom/sec/erisclient/ErisClient;Ljava/io/OutputStream;)V

    .line 1163
    :goto_4
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 1164
    .local v3, "buffer":[B
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 1165
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 1166
    .local v4, "res":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 1168
    nop

    .line 1182
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "buffer":[B
    .end local v4    # "res":I
    goto :goto_7

    .line 1171
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "res":I
    :cond_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1173
    .local v5, "jsonStr":Ljava/lang/String;
    :try_start_5
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v6, v5}, Lcom/sec/erisclient/ErisClient;->access$600(Lcom/sec/erisclient/ErisClient;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1177
    goto :goto_5

    .line 1174
    :catch_0
    move-exception v6

    .line 1175
    .local v6, "e":Lorg/json/JSONException;
    :try_start_6
    const-string v7, "ErisClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DaemonRunner:run() JSONException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1178
    .end local v3    # "buffer":[B
    .end local v4    # "res":I
    .end local v5    # "jsonStr":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_5
    goto :goto_4

    .line 1179
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    goto :goto_6

    .line 1154
    :catch_2
    move-exception v3

    .line 1157
    invoke-direct {p0, v2}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->checkpoint(Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 1180
    .local v0, "e":Ljava/io/IOException;
    :goto_6
    :try_start_7
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DaemonRunner:run() IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1183
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    invoke-static {v0, v2}, Lcom/sec/erisclient/ErisClient;->access$400(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisError;)V

    .line 1185
    const-string v0, "ErisClient"

    const-string v2, "DaemonRunner:run() restart daemon"

    invoke-static {v0, v2}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v0}, Lcom/sec/erisclient/ErisClient;->stopService()V

    .line 1187
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v0}, Lcom/sec/erisclient/ErisClient;->startService()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3

    .end local v1    # "address":Landroid/net/LocalSocketAddress;
    goto :goto_8

    .line 1135
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local p0    # "this":Lcom/sec/erisclient/ErisClient$DaemonRunner;
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1190
    .restart local p0    # "this":Lcom/sec/erisclient/ErisClient$DaemonRunner;
    :catch_3
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1192
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    invoke-static {v1, v2}, Lcom/sec/erisclient/ErisClient;->access$400(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisError;)V

    goto :goto_9

    .line 1188
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v0

    .line 1189
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1193
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_8
    nop

    .line 1194
    :goto_9
    return-void
.end method
