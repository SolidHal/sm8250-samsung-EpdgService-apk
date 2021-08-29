.class Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgNetworkMgmtObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgIfAddressUpdatedRunnable"
.end annotation


# instance fields
.field private final mAddress:Landroid/net/LinkAddress;

.field private final mIface:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Landroid/net/LinkAddress;Ljava/lang/String;)V
    .locals 0
    .param p2, "address"    # Landroid/net/LinkAddress;
    .param p3, "iface"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;->this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;->mAddress:Landroid/net/LinkAddress;

    .line 110
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;->mIface:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;->this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;->mAddress:Landroid/net/LinkAddress;

    iget-object v2, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->EpdgAddressUpdated(Landroid/net/LinkAddress;Ljava/lang/String;)V

    .line 116
    return-void
.end method
