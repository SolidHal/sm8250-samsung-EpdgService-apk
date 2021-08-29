.class Lcom/sec/epdg/handover/EpdgImsListener$1;
.super Lcom/sec/ims/im/IImSessionListener$Stub;
.source "EpdgImsListener.java"


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

    .line 72
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$1;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Lcom/sec/ims/im/IImSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onImSessionEstablished(Z)V
    .locals 3
    .param p1, "isExist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$1;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImSessionEstablished() : isExist == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$1;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->access$100(Lcom/sec/epdg/handover/EpdgImsListener;Z)V

    .line 77
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$1;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->access$200(Lcom/sec/epdg/handover/EpdgImsListener;Z)V

    .line 78
    return-void
.end method
