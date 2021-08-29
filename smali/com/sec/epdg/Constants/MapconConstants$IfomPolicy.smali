.class public Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
.super Ljava/lang/Object;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IfomPolicy"
.end annotation


# instance fields
.field private apnList:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;",
            ">;"
        }
    .end annotation
.end field

.field private ratList:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "apnDbString"    # Ljava/lang/String;
    .param p2, "ratDbString"    # Ljava/lang/String;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    const-class v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 407
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->apnList:Ljava/util/EnumSet;

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->ratList:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 411
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnTypeList;

    invoke-direct {v0, p1}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnTypeList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnTypeList;->getMapconApnTypeList()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->apnList:Ljava/util/EnumSet;

    .line 412
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;

    invoke-direct {v0, p2}, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;->getMapconPrefListArray()[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->ratList:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 413
    return-void
.end method


# virtual methods
.method public getIfomPolicyApnList()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->apnList:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getIfomPolicyRatList()[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->ratList:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    return-object v0
.end method
