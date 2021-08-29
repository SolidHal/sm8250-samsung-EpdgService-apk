.class Lcom/sec/epdg/handover/EpdgImsListener$OnDeRegistered;
.super Lcom/sec/epdg/handover/EpdgImsListener$ImsRegRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDeRegistered"
.end annotation


# instance fields
.field private final mErrorCode:Lcom/sec/ims/ImsRegistrationError;

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 0
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "errorCode"    # Lcom/sec/ims/ImsRegistrationError;

    .line 542
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnDeRegistered;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$ImsRegRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/ImsRegistration;)V

    .line 544
    iput-object p3, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnDeRegistered;->mErrorCode:Lcom/sec/ims/ImsRegistrationError;

    .line 545
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnDeRegistered;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsRegStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnDeRegistered;->mReg:Lcom/sec/ims/ImsRegistration;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnDeRegistered;->mErrorCode:Lcom/sec/ims/ImsRegistrationError;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->onDeRegistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V

    .line 550
    return-void
.end method
