.class Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgContentObserverBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgContentObserverBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgBroadcastRunnable"
.end annotation


# instance fields
.field mSelfChange:Z

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sec/epdg/EpdgContentObserverBase;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgContentObserverBase;ZLandroid/net/Uri;)V
    .locals 0
    .param p2, "selfChange"    # Z
    .param p3, "uri"    # Landroid/net/Uri;

    .line 22
    iput-object p1, p0, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;->this$0:Lcom/sec/epdg/EpdgContentObserverBase;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 23
    iput-boolean p2, p0, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;->mSelfChange:Z

    .line 24
    iput-object p3, p0, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;->mUri:Landroid/net/Uri;

    .line 25
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;->this$0:Lcom/sec/epdg/EpdgContentObserverBase;

    iget-boolean v1, p0, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;->mSelfChange:Z

    iget-object v2, p0, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgContentObserverBase;->onChangeSlowPath(ZLandroid/net/Uri;)V

    .line 30
    return-void
.end method
