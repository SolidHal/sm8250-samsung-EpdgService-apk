.class Lcom/sec/erisclient/ErisClient$TimeoutThread;
.super Ljava/lang/Thread;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/ErisClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutThread"
.end annotation


# instance fields
.field private connection:Lcom/sec/erisclient/IPSecConnection;

.field final synthetic this$0:Lcom/sec/erisclient/ErisClient;

.field private timeout:J


# direct methods
.method public constructor <init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IPSecConnection;J)V
    .locals 0
    .param p2, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .param p3, "timeout"    # J

    .line 1201
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1202
    iput-wide p3, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->timeout:J

    .line 1203
    iput-object p2, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->connection:Lcom/sec/erisclient/IPSecConnection;

    .line 1204
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1208
    monitor-enter p0

    .line 1210
    const-wide/16 v0, 0x3e8

    :try_start_0
    iget-wide v2, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->timeout:J

    mul-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1211
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->this$0:Lcom/sec/erisclient/ErisClient;

    sget-object v1, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    new-instance v2, Lcom/sec/erisclient/ErisEventData;

    iget-object v3, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->connection:Lcom/sec/erisclient/IPSecConnection;

    sget-object v4, Lcom/sec/erisclient/ErisError;->ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/erisclient/ErisEventData;-><init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V

    invoke-static {v0, v1, v2}, Lcom/sec/erisclient/ErisClient;->access$700(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    nop

    .line 1216
    :try_start_1
    monitor-exit p0

    .line 1217
    return-void

    .line 1216
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/lang/InterruptedException;
    monitor-exit p0

    return-void

    .line 1216
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
