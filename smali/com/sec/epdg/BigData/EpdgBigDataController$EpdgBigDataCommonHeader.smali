.class Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;
.super Ljava/lang/Object;
.source "EpdgBigDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/BigData/EpdgBigDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgBigDataCommonHeader"
.end annotation


# static fields
.field private static final PRAMETER_MNON:Ljava/lang/String; = "MNON"

.field private static final PRAMETER_OMNW:Ljava/lang/String; = "OMNW"

.field private static final PRAMETER_PLMN:Ljava/lang/String; = "PLMN"

.field private static final PRAMETER_SLOT:Ljava/lang/String; = "SLOT"

.field private static final PRAMETER_SREV:Ljava/lang/String; = "SREV"


# instance fields
.field mCurrentSimSlot:Ljava/lang/String;

.field mMnoNameBasedOnSimPlmn:Ljava/lang/String;

.field mOmcNetworkCode:Ljava/lang/String;

.field mPlmn:Ljava/lang/String;

.field mRevisionOfBigData:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;


# direct methods
.method constructor <init>(Lcom/sec/epdg/BigData/EpdgBigDataController;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    invoke-virtual {p0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->readRevisionOfBigData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mRevisionOfBigData:Ljava/lang/String;

    .line 598
    invoke-virtual {p0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->readMnoNameBasedOnSimPlmn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mMnoNameBasedOnSimPlmn:Ljava/lang/String;

    .line 599
    invoke-virtual {p0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->readPlmn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mPlmn:Ljava/lang/String;

    .line 600
    invoke-virtual {p0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->readOmcNetworkCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mOmcNetworkCode:Ljava/lang/String;

    .line 601
    invoke-virtual {p0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->readCurrentSimSlot()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mCurrentSimSlot:Ljava/lang/String;

    .line 602
    return-void
.end method


# virtual methods
.method public getCurrentSimSlot()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mCurrentSimSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getMnoNameBasedOnSimPlmn()Ljava/lang/String;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mMnoNameBasedOnSimPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public getOmcNetworkCode()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mOmcNetworkCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public getRevisionOfBigData()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->mRevisionOfBigData:Ljava/lang/String;

    return-object v0
.end method

.method public readCurrentSimSlot()Ljava/lang/String;
    .locals 2

    .line 649
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 650
    .local v0, "mSubId":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readMnoNameBasedOnSimPlmn()Ljava/lang/String;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-static {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$200(Lcom/sec/epdg/BigData/EpdgBigDataController;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readOmcNetworkCode()Ljava/lang/String;
    .locals 2

    .line 641
    const-string v0, "persist.omc.sales_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_0
    const-string v1, "ro.csc.omcnw_code"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readPlmn()Ljava/lang/String;
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-static {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->access$200(Lcom/sec/epdg/BigData/EpdgBigDataController;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "mPlmnInfo":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    :cond_0
    return-object v0
.end method

.method public readRevisionOfBigData()Ljava/lang/String;
    .locals 1

    .line 625
    const-string v0, "2"

    return-object v0
.end method
