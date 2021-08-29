.class Lcom/sec/epdg/NetworkChangeController$ServiceStatusChangedRunnable;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "NetworkChangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/NetworkChangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceStatusChangedRunnable"
.end annotation


# instance fields
.field private mServiceState:Landroid/telephony/ServiceState;

.field final synthetic this$0:Lcom/sec/epdg/NetworkChangeController;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/NetworkChangeController;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    .line 768
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController$ServiceStatusChangedRunnable;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 769
    new-instance p1, Landroid/telephony/ServiceState;

    invoke-direct {p1, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController$ServiceStatusChangedRunnable;->mServiceState:Landroid/telephony/ServiceState;

    .line 770
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$ServiceStatusChangedRunnable;->this$0:Lcom/sec/epdg/NetworkChangeController;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$ServiceStatusChangedRunnable;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0, v1}, Lcom/sec/epdg/NetworkChangeController;->access$000(Lcom/sec/epdg/NetworkChangeController;Landroid/telephony/ServiceState;)V

    .line 775
    return-void
.end method
