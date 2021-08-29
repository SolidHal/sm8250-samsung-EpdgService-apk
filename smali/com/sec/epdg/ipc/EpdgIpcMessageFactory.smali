.class public Lcom/sec/epdg/ipc/EpdgIpcMessageFactory;
.super Ljava/lang/Object;
.source "EpdgIpcMessageFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EpdgIpcMessageFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromByteArray([BI)Lcom/sec/epdg/ipc/EpdgIpcMessage;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessageFactory;->readIpcMainCmd([B)I

    move-result v0

    .line 14
    .local v0, "mainCmd":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipcMainCmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EpdgIpcMessageFactory"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v1, 0x0

    .line 17
    .local v1, "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x70

    if-eq v0, v3, :cond_0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown IPC command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " received. Ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;-><init>([BI)V

    move-object v1, v2

    .line 26
    goto :goto_0

    .line 22
    :cond_1
    new-instance v2, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>([BI)V

    move-object v1, v2

    .line 23
    goto :goto_0

    .line 19
    :cond_2
    new-instance v2, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>([BI)V

    move-object v1, v2

    .line 20
    nop

    .line 31
    :goto_0
    return-object v1
.end method

.method private static readIpcMainCmd([B)I
    .locals 8
    .param p0, "data"    # [B

    .line 35
    const-string v0, "IOException while closing stream"

    const-string v1, "EpdgIpcMessageFactory"

    const/4 v2, -0x1

    .line 36
    .local v2, "mainCmd":I
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 41
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 42
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v5

    .line 48
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :goto_0
    goto :goto_2

    .line 49
    :catch_0
    move-exception v5

    .line 50
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 47
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 43
    :catch_1
    move-exception v5

    .line 44
    .local v5, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .end local v5    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 49
    :catch_2
    move-exception v5

    .line 50
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 54
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    return v2

    .line 48
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 52
    goto :goto_4

    .line 49
    :catch_3
    move-exception v6

    .line 50
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    .end local v6    # "e":Ljava/io/IOException;
    :goto_4
    throw v5
.end method
