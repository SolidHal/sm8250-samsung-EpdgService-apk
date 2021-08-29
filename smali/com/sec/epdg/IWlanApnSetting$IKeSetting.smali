.class Lcom/sec/epdg/IWlanApnSetting$IKeSetting;
.super Ljava/lang/Object;
.source "IWlanApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IKeSetting"
.end annotation


# instance fields
.field private mIkeConnectionTimeOut:I

.field private mIkeDhGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mIkeDpdTimeOut:I

.field private mIkeEapType:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

.field private mIkeEncryptType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;",
            ">;"
        }
    .end annotation
.end field

.field private mIkeIntergrity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;",
            ">;"
        }
    .end annotation
.end field

.field private mIkeLife:I

.field private mIkeNatValue:I

.field private mIkeWindowSize:I

.field private mIkeversion:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IWlanApnSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IWlanApnSetting$1;

    .line 290
    invoke-direct {p0}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/IWlanApnSetting$IKeSetting;Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILcom/sec/epdg/DataType/IWlanEnum$IkeEapType;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IWlanApnSetting$IKeSetting;
    .param p1, "x1"    # Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/util/ArrayList;
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .param p10, "x10"    # I

    .line 290
    invoke-direct/range {p0 .. p10}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->updateIkeValues(Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILcom/sec/epdg/DataType/IWlanEnum$IkeEapType;I)V

    return-void
.end method

.method private updateIkeValues(Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILcom/sec/epdg/DataType/IWlanEnum$IkeEapType;I)V
    .locals 0
    .param p1, "ikeversion"    # Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .param p5, "ikelife"    # I
    .param p6, "ikewindow"    # I
    .param p7, "ikeconntimeout"    # I
    .param p8, "ikedpdtimeout"    # I
    .param p9, "eaptype"    # Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .param p10, "ikenatval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;",
            ">;IIII",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;",
            "I)V"
        }
    .end annotation

    .line 317
    .local p2, "ikeencryption":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;>;"
    .local p3, "ikeintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;>;"
    .local p4, "ikedhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;>;"
    iput-object p1, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeversion:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    .line 318
    iput-object p3, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeIntergrity:Ljava/util/ArrayList;

    .line 319
    iput-object p2, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeEncryptType:Ljava/util/ArrayList;

    .line 320
    iput-object p4, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeDhGroup:Ljava/util/ArrayList;

    .line 321
    iput-object p9, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeEapType:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    .line 322
    iput p5, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeLife:I

    .line 323
    iput p6, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeWindowSize:I

    .line 324
    iput p8, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeDpdTimeOut:I

    .line 325
    iput p7, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeConnectionTimeOut:I

    .line 326
    iput p10, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeNatValue:I

    .line 327
    return-void
.end method


# virtual methods
.method public getmIkeConnectionTimeOut()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeConnectionTimeOut:I

    return v0
.end method

.method public getmIkeDhGroup()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeDhGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIkeDpdTimeOut()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeDpdTimeOut:I

    return v0
.end method

.method public getmIkeEapType()Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeEapType:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    return-object v0
.end method

.method public getmIkeEncryptType()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeEncryptType:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIkeIntergrity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeIntergrity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIkeLife()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeLife:I

    return v0
.end method

.method public getmIkeNatValue()I
    .locals 1

    .line 362
    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeNatValue:I

    return v0
.end method

.method public getmIkeWindowSize()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeWindowSize:I

    return v0
.end method

.method public getmIkeversion()Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeversion:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    return-object v0
.end method
