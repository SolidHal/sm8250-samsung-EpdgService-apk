.class Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgNetworkMgmtObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgIfLinkStatusChangedRunnable"
.end annotation


# instance fields
.field private final mBool:Z

.field private final mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "bool"    # Z

    .line 93
    iput-object p1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 94
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->mString:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->mBool:Z

    .line 96
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->mString:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;->mBool:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->EpdgInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method
