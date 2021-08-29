.class Lcom/sec/epdg/handover/EpdgImsListener$4;
.super Ljava/lang/Object;
.source "EpdgImsListener.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 280
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$4;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$4;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$ImsManagerConnected;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$4;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener$ImsManagerConnected;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/epdg/handover/EpdgImsListener$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$4;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisconnected: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method
