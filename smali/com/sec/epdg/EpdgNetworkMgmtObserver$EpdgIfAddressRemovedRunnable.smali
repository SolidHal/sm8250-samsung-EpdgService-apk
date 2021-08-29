.class Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgNetworkMgmtObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgIfAddressRemovedRunnable"
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

    .line 123
    iput-object p1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;->this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;->mAddress:Landroid/net/LinkAddress;

    .line 125
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;->mIface:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;->this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;->mAddress:Landroid/net/LinkAddress;

    iget-object v2, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->EpdgAddressRemoved(Landroid/net/LinkAddress;Ljava/lang/String;)V

    .line 131
    return-void
.end method
