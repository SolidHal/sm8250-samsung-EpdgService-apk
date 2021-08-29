.class Lcom/sec/erisclient/ErisClient$1;
.super Landroid/content/BroadcastReceiver;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/ErisClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/erisclient/ErisClient;


# direct methods
.method constructor <init>(Lcom/sec/erisclient/ErisClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/erisclient/ErisClient;

    .line 133
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient$1;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 138
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.erisclient.natkeepalive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$1;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v0}, Lcom/sec/erisclient/ErisClient;->checkNatKeepAlive()Lcom/sec/erisclient/ErisError;

    .line 144
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$1;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v0}, Lcom/sec/erisclient/ErisClient;->access$000(Lcom/sec/erisclient/ErisClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 151
    :goto_1
    return-void
.end method
