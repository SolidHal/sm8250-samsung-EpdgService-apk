.class Lcom/sec/epdg/NetworkChangeController$1;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "NetworkChangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/NetworkChangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/NetworkChangeController;


# direct methods
.method constructor <init>(Lcom/sec/epdg/NetworkChangeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 780
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController$1;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$1;->this$0:Lcom/sec/epdg/NetworkChangeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/NetworkChangeController;->onNetworkStatusChanged(Z)V

    .line 784
    return-void
.end method
