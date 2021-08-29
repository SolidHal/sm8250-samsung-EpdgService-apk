.class abstract Lcom/sec/epdg/handover/EpdgImsListener$ImsRegRunnable;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ImsRegRunnable"
.end annotation


# instance fields
.field protected final mReg:Lcom/sec/ims/ImsRegistration;

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 571
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$ImsRegRunnable;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 572
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsListener$ImsRegRunnable;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 573
    return-void
.end method
