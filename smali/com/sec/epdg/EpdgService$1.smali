.class Lcom/sec/epdg/EpdgService$1;
.super Lcom/sec/epdg/IEpdgManager$Stub;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/EpdgService;

    .line 730
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/IEpdgManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/sec/epdg/IEpdgHandoverListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/epdg/IEpdgHandoverListener;

    .line 939
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "addListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 941
    return-void

    .line 944
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgHandoverHandler;->addListener(Lcom/sec/epdg/IEpdgHandoverListener;)V

    .line 945
    return-void
.end method

.method public addListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/epdg/IEpdgHandoverListener;
    .param p2, "phoneId"    # I

    .line 948
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "addListenerBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 950
    return-void

    .line 953
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgHandoverHandler;->addListener(Lcom/sec/epdg/IEpdgHandoverListener;)V

    .line 954
    return-void
.end method

.method public checkEpdgExtraFeature(ILjava/lang/String;)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .line 918
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "checkEpdgExtraFeature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 920
    const/4 v0, 0x0

    return v0

    .line 923
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/sec/epdg/EpdgManagerStubImpl;->checkEpdgExtraFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public connect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 766
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 768
    const/4 v0, -0x1

    return v0

    .line 771
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/EpdgManagerStubImpl;->connect(Ljava/lang/String;Landroid/os/IBinder;)I

    .line 772
    return v1
.end method

.method public connectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "phoneId"    # I

    .line 776
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "connectBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    .line 778
    const/4 v0, -0x1

    return v0

    .line 781
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/EpdgManagerStubImpl;->connect(Ljava/lang/String;Landroid/os/IBinder;)I

    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 786
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "disconnect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 788
    const/4 v0, -0x1

    return v0

    .line 791
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/EpdgManagerStubImpl;->disconnect(Ljava/lang/String;Landroid/os/IBinder;)I

    .line 792
    return v1
.end method

.method public disconnectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "phoneId"    # I

    .line 796
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "disconnectBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    .line 798
    const/4 v0, -0x1

    return v0

    .line 801
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/EpdgManagerStubImpl;->disconnect(Ljava/lang/String;Landroid/os/IBinder;)I

    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public enableTestRilAdapter(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .line 806
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "enableTestRilAdapter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 808
    const/4 v0, -0x1

    return v0

    .line 811
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgManagerStubImpl;->enableTestRilAdapter(Z)I

    .line 812
    return v1
.end method

.method public enableTestRilAdapterBySim(ZI)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 816
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "enableTestRilAdapterBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 818
    const/4 v0, -0x1

    return v0

    .line 821
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgManagerStubImpl;->enableTestRilAdapter(Z)I

    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentImsPdnStatus()I
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "getCurrentImsPdnStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 866
    const/4 v0, -0x1

    return v0

    .line 869
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManagerStubImpl;->getCurrentImsPdnStatus()I

    move-result v0

    return v0
.end method

.method public getCurrentImsPdnStatusBySim(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 873
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "getCurrentImsPdnStatusBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 875
    const/4 v0, -0x1

    return v0

    .line 878
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManagerStubImpl;->getCurrentImsPdnStatus()I

    move-result v0

    return v0
.end method

.method public isDuringHandoverForIMS()Z
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "isDuringHandoverForIMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 848
    return v1

    .line 851
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManagerStubImpl;->isDuringHandoverForIMS()Z

    move-result v0

    return v0
.end method

.method public isDuringHandoverForIMSBySim(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 855
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "isDuringHandoverForIMSBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 857
    const/4 v0, 0x0

    return v0

    .line 860
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManagerStubImpl;->isDuringHandoverForIMS()Z

    move-result v0

    return v0
.end method

.method public isPossibleW2LHOAfterCallEnd()Z
    .locals 3

    .line 882
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "isPossibleW2LHOAfterCallEnd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 884
    return v1

    .line 887
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManagerStubImpl;->isPossibleW2LHOAfterCallEnd()Z

    move-result v0

    return v0
.end method

.method public isPossibleW2LHOAfterCallEndBySim(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 891
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "isPossibleW2LHOAfterCallEndBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 893
    const/4 v0, 0x0

    return v0

    .line 896
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManagerStubImpl;->isPossibleW2LHOAfterCallEnd()Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/sec/epdg/IEpdgHandoverListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/epdg/IEpdgHandoverListener;

    .line 961
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "removeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 963
    return-void

    .line 966
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgHandoverHandler;->removeListener(Lcom/sec/epdg/IEpdgHandoverListener;)V

    .line 967
    return-void
.end method

.method public removeListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/epdg/IEpdgHandoverListener;
    .param p2, "phoneId"    # I

    .line 970
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "removeListenerBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 972
    return-void

    .line 975
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$200()[Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgHandoverHandler;->removeListener(Lcom/sec/epdg/IEpdgHandoverListener;)V

    .line 976
    return-void
.end method

.method public sendEventToStateMachine(IILandroid/os/IBinder;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 826
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "sendEventToStateMachine"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 828
    const/4 v0, -0x1

    return v0

    .line 831
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/EpdgManagerStubImpl;->sendEventToStateMachine(IILandroid/os/IBinder;)I

    .line 832
    return v1
.end method

.method public sendEventToStateMachineBySim(IILandroid/os/IBinder;I)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "phoneId"    # I

    .line 836
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "sendEventToStateMachineBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p4

    if-nez v0, :cond_0

    .line 838
    const/4 v0, -0x1

    return v0

    .line 841
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p4

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/EpdgManagerStubImpl;->sendEventToStateMachine(IILandroid/os/IBinder;)I

    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method public setEpdgNotAvailableDuringEmergencyCall(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 927
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "setEpdgNotAvailableDuringEmergencyCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 929
    const/4 v0, 0x0

    return v0

    .line 931
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManagerStubImpl;->setEpdgNotAvailableDuringEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public setReleaseCallBeforeHO(IZ)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "setReleaseCall"    # Z

    .line 900
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "setReleaseCallBeforeHO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 902
    const/4 v0, 0x0

    return v0

    .line 905
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/sec/epdg/EpdgManagerStubImpl;->setReleaseCallBeforeHO(Z)Z

    move-result v0

    return v0
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .line 748
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "startHandOverLteToWifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 750
    const/4 v0, -0x1

    return v0

    .line 753
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManagerStubImpl;->startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method public startHandOverLteToWifiBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .param p5, "phoneId"    # I

    .line 757
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "startHandOverLteToWifiBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p5

    if-nez v0, :cond_0

    .line 759
    const/4 v0, -0x1

    return v0

    .line 762
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p5

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManagerStubImpl;->startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .line 732
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "startHandOverWifiToLte"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 734
    const/4 v0, -0x1

    return v0

    .line 736
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManagerStubImpl;->startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLteBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .param p5, "phoneId"    # I

    .line 740
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "startHandOverWifiToLteBySim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p5

    if-nez v0, :cond_0

    .line 742
    const/4 v0, -0x1

    return v0

    .line 744
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p5

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManagerStubImpl;->startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method public triggerHOAfterReleaseCall(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 909
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$1;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "triggerHOAfterReleaseCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 911
    const/4 v0, 0x0

    return v0

    .line 914
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManagerStubImpl;->triggerHOAfterReleaseCall()Z

    move-result v0

    return v0
.end method
