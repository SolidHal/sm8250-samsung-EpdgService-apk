.class Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;
.super Landroid/os/Handler;
.source "IwlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;-><init>(Lcom/sec/epdg/IwlanNetworkService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;

.field final synthetic val$this$0:Lcom/sec/epdg/IwlanNetworkService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;Landroid/os/Looper;Lcom/sec/epdg/IwlanNetworkService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 59
    iput-object p1, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;->this$1:Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;

    iput-object p3, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;->val$this$0:Lcom/sec/epdg/IwlanNetworkService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .line 62
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;->this$1:Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;

    invoke-static {v0}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->access$200(Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkServiceCallback;

    .line 64
    .local v0, "callback":Landroid/telephony/NetworkServiceCallback;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 94
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;->this$1:Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;

    invoke-virtual {v1}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->notifyNetworkRegistrationInfoChanged()V

    .line 92
    goto :goto_2

    .line 66
    :cond_1
    if-nez v0, :cond_2

    return-void

    .line 67
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 68
    .local v1, "epdgAvailable":Z
    iget-object v2, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;->this$1:Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;

    .line 69
    invoke-static {v2, v1}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->access$300(Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;Z)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 72
    .local v2, "netState":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v2, :cond_4

    .line 73
    const/4 v3, 0x5

    .local v3, "resultCode":I
    goto :goto_1

    .line 75
    .end local v3    # "resultCode":I
    :cond_4
    const/4 v3, 0x0

    .line 80
    .restart local v3    # "resultCode":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;->this$1:Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;

    iget-object v4, v4, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/sec/epdg/IwlanNetworkService;

    invoke-static {v4}, Lcom/sec/epdg/IwlanNetworkService;->access$000(Lcom/sec/epdg/IwlanNetworkService;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling onRequestNetworkRegistrationInfoComplete.resultCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", netState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v3, v2}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 86
    :catch_0
    move-exception v4

    .line 87
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider$1;->this$1:Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;

    iget-object v5, v5, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/sec/epdg/IwlanNetworkService;

    invoke-static {v5}, Lcom/sec/epdg/IwlanNetworkService;->access$000(Lcom/sec/epdg/IwlanNetworkService;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v4    # "e":Ljava/lang/Exception;
    nop

    .line 96
    .end local v1    # "epdgAvailable":Z
    .end local v2    # "netState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v3    # "resultCode":I
    :goto_2
    return-void
.end method
