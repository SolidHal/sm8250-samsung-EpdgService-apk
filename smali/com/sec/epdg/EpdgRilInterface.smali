.class public interface abstract Lcom/sec/epdg/EpdgRilInterface;
.super Ljava/lang/Object;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;
    }
.end annotation


# virtual methods
.method public abstract deinitialize()V
.end method

.method public abstract sendEpdgStatus(IZ)V
.end method

.method public abstract sendNetHandoverResumeNoti(IZ)V
.end method

.method public abstract triggerHandover(IZ)V
.end method

.method public abstract updateApnConnStatus(IZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;ZZZ)V
.end method

.method public abstract updateEpdgAvailability(Z)V
.end method

.method public abstract updateEpdgConfiguration(IIIIIILjava/lang/String;)Z
.end method

.method public abstract updateEpdgHoThreshold(ZIIIIIIIIIIII)V
.end method

.method public abstract updateEpdgHoThreshold(ZLcom/sec/epdg/DataType/EpdgCsThreshold;)V
.end method

.method public abstract updateEpdgHoThreshold(ZZLcom/sec/epdg/DataType/EpdgCsThreshold;)V
.end method

.method public abstract updateEpdgMapcon(ILjava/lang/String;)Z
.end method

.method public abstract updateSNSSAI(I[BII[B[B)Z
.end method

.method public abstract updateSubId(I)V
.end method
