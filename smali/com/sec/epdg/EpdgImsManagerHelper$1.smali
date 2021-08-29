.class Lcom/sec/epdg/EpdgImsManagerHelper$1;
.super Ljava/lang/Object;
.source "EpdgImsManagerHelper.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/EpdgImsManagerHelper;-><init>(Landroid/os/Handler;Lcom/sec/epdg/EpdgSubScription;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgImsManagerHelper;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgImsManagerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/EpdgImsManagerHelper;

    .line 43
    iput-object p1, p0, Lcom/sec/epdg/EpdgImsManagerHelper$1;->this$0:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper$1;->this$0:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-static {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->access$000(Lcom/sec/epdg/EpdgImsManagerHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManager connected."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper$1;->this$0:Lcom/sec/epdg/EpdgImsManagerHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->access$102(Lcom/sec/epdg/EpdgImsManagerHelper;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    .line 52
    return-void
.end method
