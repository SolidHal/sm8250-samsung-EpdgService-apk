.class Lcom/sec/epdg/handover/EpdgImsListener$3;
.super Ljava/lang/Object;
.source "EpdgImsListener.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/handover/EpdgImsListener;->registerCallStatusListener()V
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

    .line 237
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 248
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected: Connected to Volte service."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {p2}, Lcom/sec/ims/volte2/IVolteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener;->access$602(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    .line 250
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$800(Lcom/sec/epdg/handover/EpdgImsListener;)V

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$600(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$600(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->access$300(Lcom/sec/epdg/handover/EpdgImsListener;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->access$900(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 241
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected: Disconnected."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener;->access$602(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    .line 243
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$3;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$700(Lcom/sec/epdg/handover/EpdgImsListener;)V

    .line 244
    return-void
.end method
