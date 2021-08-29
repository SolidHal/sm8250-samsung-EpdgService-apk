.class public Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;
.super Landroid/content/ContentProvider;
.source "IWlanContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "iwlansettings"

.field private static final BASE_PATH:Ljava/lang/String; = "todos"

.field private static final DATABASE_NAME:Ljava/lang/String; = "iwlansettings.db"

.field protected static final EPDG_APN_CONF_PATH:Ljava/lang/String; = "etc/epdg_apns_conf.xml"

.field private static final EPDG_STATE_ID:I = 0x46

.field private static final EPDG_STATE_ID2:I = 0x50

.field private static final IWLANSETTINGS:I = 0xa

.field private static final IWLANSETTING_ID:I = 0x14

.field private static final TAG:Ljava/lang/String; = "[IWLANCONTENTPROVIDER]"

.field private static final URL_EPDG_SETTINGS:I = 0x3

.field private static final VOWIFISETTING_ID:I = 0x28

.field private static final VOWIFISETTING_ID2:I = 0x32

.field private static final VOWIFI_STATE_ID:I = 0x3c

.field private static mHashManager0:Lcom/sec/epdg/IWlanContentProvider/HashManager;

.field private static mHashManager1:Lcom/sec/epdg/IWlanContentProvider/HashManager;

.field private static mMccmnc:Ljava/lang/String;

.field private static mMnoName0:Ljava/lang/String;

.field private static mMnoName1:Ljava/lang/String;

.field private static mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private database:Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 56
    const-string v1, "iwlansettings"

    const-string v2, "todos"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "todos/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "todos/epdgsettings"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "todos/vowifisetting"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "todos/vowifisetting2"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "todos/vowifistate"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "todos/epdgstate"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "todos/epdgstate2"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    const-string v0, "00000"

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mMccmnc:Ljava/lang/String;

    .line 70
    const-string v0, "notset"

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mMnoName0:Ljava/lang/String;

    .line 71
    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mMnoName1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mMccmnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 34
    sput-object p0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mMccmnc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Lcom/sec/epdg/IWlanContentProvider/HashManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mHashManager0:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    return-object v0
.end method

.method static synthetic access$400()Lcom/sec/epdg/IWlanContentProvider/HashManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mHashManager1:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 34
    invoke-static {p0, p1, p2}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    if-ne v1, v2, :cond_2

    .line 510
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    return-void

    .line 511
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkColumns([Ljava/lang/String;)V
    .locals 5
    .param p0, "projection"    # [Ljava/lang/String;

    .line 449
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 450
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_CONN_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 451
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_APN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 452
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_SUBNET_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 453
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_USER_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 454
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_PFS:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 455
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_OWN_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 456
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_OWN_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 457
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_REMOTE_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 458
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_TUNNEL_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 459
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 460
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 461
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 462
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_LIFETYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 463
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_LIFE_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 464
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_REMOTE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 465
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_VERSION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 466
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 467
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 468
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 469
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_EAP_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 470
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_LIFE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 471
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_WINDOW_SIZE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 472
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_DPD_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 473
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_CONNECTION_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 474
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_NAT_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 475
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_VIRTUAL_ADAPTER_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 476
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_VENDOR_ATTRIBUTE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 477
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_PERIODIC_DPD_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 478
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MOBIKE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 479
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IMEI:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 480
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_FASTREAUTH:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 481
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_DEVICE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 482
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MTU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 483
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const/16 v1, 0x23

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 485
    .local v0, "available":[Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 486
    new-instance v1, Ljava/util/HashSet;

    .line 487
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 488
    .local v1, "requestedColumns":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    .line 489
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 491
    .local v2, "availableColumns":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown columns in projection"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 496
    .end local v1    # "requestedColumns":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "availableColumns":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method protected static getMnoName0()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mMnoName0:Ljava/lang/String;

    return-object v0
.end method

.method protected static getMnoName1()Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mMnoName1:Ljava/lang/String;

    return-object v0
.end method

.method private static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 518
    .local v0, "mPreference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 519
    .local v1, "mValue":I
    return v1
.end method

.method private static getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    .local v0, "mPreference":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "mValue":Ljava/lang/String;
    return-object v1
.end method

.method private static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "prefValue"    # I

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 537
    .local v0, "mPreference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 538
    .local v1, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 539
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 540
    return-void
.end method

.method private static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "prefValue"    # Ljava/lang/String;

    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 530
    .local v0, "mPreference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 531
    .local v1, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 533
    return-void
.end method

.method private updateEpdgSettings(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "sqlDB"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, "rowsUpdated":I
    :try_start_0
    const-string v1, "epdgsettings"

    invoke-virtual {p1, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "[IWLANCONTENTPROVIDER]"

    const-string v3, "SQLiteOutOfMemoryException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    return v0
.end method

.method private updateEpdgStateId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "sqlDB"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 317
    const-string v0, "mno_name"

    const-string v1, "[IWLANCONTENTPROVIDER]"

    const/4 v2, 0x0

    .line 319
    .local v2, "rowsUpdated":I
    :try_start_0
    const-string v3, "epdgstate"

    invoke-virtual {p1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 321
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLUMN_MNO_NAME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mMnoName0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "Database full, unable to update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    return v2
.end method

.method private updateEpdgStateId2(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "sqlDB"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 336
    const-string v0, "mno_name"

    const-string v1, "[IWLANCONTENTPROVIDER]"

    const/4 v2, 0x0

    .line 338
    .local v2, "rowsUpdated":I
    :try_start_0
    const-string v3, "epdgstate2"

    invoke-virtual {p1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 340
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLUMN_MNO_NAME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 344
    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mMnoName1:Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "Database full, unable to update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    return v2
.end method

.method private updateIwlanSettings(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "sqlDB"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "rowsUpdated":I
    :try_start_0
    const-string v1, "iwlansetting"

    invoke-virtual {p1, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 287
    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "[IWLANCONTENTPROVIDER]"

    const-string v3, "Database full, unable to update"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    return v0
.end method

.method private updateVoWifiStateId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "sqlDB"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, "rowsUpdated":I
    :try_start_0
    const-string v1, "vowifistate"

    invoke-virtual {p1, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 311
    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "[IWLANCONTENTPROVIDER]"

    const-string v3, "Database full, unable to update"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 215
    const-string v0, "[IWLANCONTENTPROVIDER]"

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 216
    .local v1, "uriType":I
    const/4 v2, 0x0

    .line 219
    .local v2, "rowsDeleted":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->database:Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2

    .line 223
    .local v3, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 225
    const/16 v4, 0xa

    const-string v5, "Database full, unable to delete"

    const-string v6, "iwlansetting"

    const/4 v7, 0x0

    if-eq v1, v4, :cond_8

    const/16 v4, 0x14

    if-eq v1, v4, :cond_6

    const/16 v0, 0x28

    const-string v4, "wifi_call_when_roaming"

    const-string v5, "wifi_call_enable"

    const-string v6, "/"

    if-eq v1, v0, :cond_5

    const/16 v0, 0x32

    if-eq v1, v0, :cond_4

    const/16 v0, 0x3c

    if-eq v1, v0, :cond_3

    const/16 v0, 0x46

    if-eq v1, v0, :cond_2

    const/16 v0, 0x50

    if-eq v1, v0, :cond_1

    .line 271
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    goto/16 :goto_1

    .line 267
    :cond_2
    goto/16 :goto_1

    .line 265
    :cond_3
    goto/16 :goto_1

    .line 258
    :cond_4
    invoke-static {v3, p2}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable2;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 261
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 262
    goto/16 :goto_1

    .line 252
    :cond_5
    invoke-static {v3, p2}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 256
    goto :goto_1

    .line 235
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "id":Ljava/lang/String;
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "_id="

    if-eqz v8, :cond_7

    .line 238
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move v2, v0

    .end local v2    # "rowsDeleted":I
    .local v0, "rowsDeleted":I
    goto :goto_0

    .line 242
    .end local v0    # "rowsDeleted":I
    .restart local v2    # "rowsDeleted":I
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v0

    .line 249
    :goto_0
    goto :goto_1

    .line 247
    :catch_0
    move-exception v6

    .line 248
    .local v6, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v0, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v6    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_1

    .line 228
    .end local v4    # "id":Ljava/lang/String;
    :cond_8
    :try_start_3
    invoke-virtual {v3, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1

    move v2, v0

    .line 232
    goto :goto_1

    .line 230
    :catch_1
    move-exception v4

    .line 231
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    nop

    .line 275
    :goto_1
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 276
    return v2

    .line 220
    .end local v3    # "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v3

    .line 221
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " occurred"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 160
    const-string v0, "[IWLANCONTENTPROVIDER]"

    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 161
    .local v1, "uriType":I
    const-wide/16 v2, 0x0

    .line 164
    .local v2, "id":J
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->database:Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_4

    .line 168
    .local v5, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 170
    const/4 v6, 0x3

    const-string v7, "Database full, unable to insert"

    if-eq v1, v6, :cond_4

    const/16 v6, 0xa

    if-eq v1, v6, :cond_3

    const/16 v6, 0x28

    if-eq v1, v6, :cond_2

    const/16 v6, 0x32

    if-eq v1, v6, :cond_1

    .line 205
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    :try_start_1
    const-string v6, "vowifisetting2"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v2, v6

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v6

    .line 200
    .local v6, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v6    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 189
    :cond_2
    :try_start_2
    const-string v6, "vowifisetting"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v2, v6

    .line 193
    goto :goto_0

    .line 191
    :catch_1
    move-exception v6

    .line 192
    .restart local v6    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v6    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 173
    :cond_3
    :try_start_3
    const-string v6, "iwlansetting"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_2

    move-wide v2, v6

    .line 177
    goto :goto_0

    .line 175
    :catch_2
    move-exception v6

    .line 176
    .restart local v6    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v6    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 181
    :cond_4
    :try_start_4
    const-string v6, "epdgsettings"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_3

    move-wide v2, v6

    .line 185
    goto :goto_0

    .line 183
    :catch_3
    move-exception v6

    .line 184
    .restart local v6    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v6    # "e":Landroid/database/sqlite/SQLiteFullException;
    nop

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "todos/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 165
    .end local v5    # "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_4
    move-exception v5

    .line 166
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " occurred"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-object v4
.end method

.method public onCreate()Z
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/IWlanContentProvider/HashManager;->getInstance(Landroid/content/Context;I)Lcom/sec/epdg/IWlanContentProvider/HashManager;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mHashManager0:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    .line 87
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/epdg/IWlanContentProvider/HashManager;->getInstance(Landroid/content/Context;I)Lcom/sec/epdg/IWlanContentProvider/HashManager;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mHashManager1:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    .line 88
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->database:Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;

    .line 89
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 90
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 97
    move-object v1, p1

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v10, v0

    .line 100
    .local v10, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v11, p0

    :try_start_0
    iget-object v0, v11, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->database:Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v0, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 106
    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 107
    .local v12, "uriType":I
    const/4 v2, 0x3

    if-eq v12, v2, :cond_8

    const/16 v2, 0xa

    const-string v3, "iwlansetting"

    if-eq v12, v2, :cond_7

    const/16 v2, 0x14

    if-eq v12, v2, :cond_6

    const/16 v2, 0x28

    if-eq v12, v2, :cond_5

    const/16 v2, 0x32

    if-eq v12, v2, :cond_4

    const/16 v2, 0x3c

    if-eq v12, v2, :cond_3

    const/16 v2, 0x46

    if-eq v12, v2, :cond_2

    const/16 v2, 0x50

    if-eq v12, v2, :cond_1

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 140
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_1
    const-string v2, "epdgstate2"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 137
    goto :goto_0

    .line 133
    :cond_2
    const-string v2, "epdgstate"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 134
    goto :goto_0

    .line 130
    :cond_3
    const-string v2, "vowifistate"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 131
    goto :goto_0

    .line 126
    :cond_4
    const-string v2, "vowifisetting2"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 127
    goto :goto_0

    .line 123
    :cond_5
    const-string v2, "vowifisetting"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 124
    goto :goto_0

    .line 113
    :cond_6
    invoke-virtual {v10, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 114
    invoke-static {p2}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->checkColumns([Ljava/lang/String;)V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 118
    goto :goto_0

    .line 109
    :cond_7
    invoke-virtual {v10, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    invoke-static {p2}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->checkColumns([Ljava/lang/String;)V

    .line 111
    goto :goto_0

    .line 120
    :cond_8
    const-string v2, "epdgsettings"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 121
    nop

    .line 143
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move-object v3, v0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 146
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_9

    .line 147
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 150
    :cond_9
    return-object v2

    .line 101
    .end local v0    # "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v12    # "uriType":I
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " occurred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[IWLANCONTENTPROVIDER]"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v2, 0x0

    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 356
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "[IWLANCONTENTPROVIDER]"

    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 357
    .local v7, "uriType":I
    const/4 v8, 0x0

    .line 360
    .local v8, "rowsUpdated":I
    :try_start_0
    iget-object v0, v1, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->database:Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8

    move-object v9, v0

    .line 364
    .local v9, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 366
    const/4 v0, 0x3

    if-eq v7, v0, :cond_11

    const/16 v0, 0xa

    if-eq v7, v0, :cond_10

    const/16 v0, 0x14

    const-string v11, "Database full, unable to update"

    if-eq v7, v0, :cond_e

    const/16 v0, 0x28

    const-string v12, "vowifi_mdn"

    const-string v13, "wifi_call_when_roaming"

    const-string v14, "wifi_call_preferred"

    const-string v15, "wifi_call_enable"

    const-string v10, "/"

    if-eq v7, v0, :cond_9

    const/16 v0, 0x32

    if-eq v7, v0, :cond_4

    const/16 v0, 0x3c

    if-eq v7, v0, :cond_3

    const/16 v0, 0x46

    if-eq v7, v0, :cond_2

    const/16 v0, 0x50

    if-eq v7, v0, :cond_1

    .line 440
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URI: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    invoke-direct {v1, v9, v3, v4, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->updateEpdgStateId2(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 438
    move/from16 v16, v7

    goto/16 :goto_5

    .line 434
    :cond_2
    invoke-direct {v1, v9, v3, v4, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->updateEpdgStateId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 435
    move/from16 v16, v7

    goto/16 :goto_5

    .line 431
    :cond_3
    invoke-direct {v1, v9, v3, v4, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->updateVoWifiStateId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 432
    move/from16 v16, v7

    goto/16 :goto_5

    .line 412
    :cond_4
    :try_start_1
    const-string v0, "vowifisetting2"

    invoke-virtual {v9, v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_3

    move v8, v0

    .line 414
    :try_start_2
    invoke-virtual {v3, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v16, v7

    .end local v7    # "uriType":I
    .local v16, "uriType":I
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v17, v8

    .end local v8    # "rowsUpdated":I
    .local v17, "rowsUpdated":I
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 426
    .end local v17    # "rowsUpdated":I
    .restart local v8    # "rowsUpdated":I
    :catch_0
    move-exception v0

    move/from16 v17, v8

    .end local v8    # "rowsUpdated":I
    .restart local v17    # "rowsUpdated":I
    goto/16 :goto_1

    .line 414
    .end local v16    # "uriType":I
    .end local v17    # "rowsUpdated":I
    .restart local v7    # "uriType":I
    .restart local v8    # "rowsUpdated":I
    :cond_5
    move/from16 v16, v7

    move/from16 v17, v8

    .line 417
    .end local v7    # "uriType":I
    .end local v8    # "rowsUpdated":I
    .restart local v16    # "uriType":I
    .restart local v17    # "rowsUpdated":I
    :goto_0
    invoke-virtual {v3, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 420
    :cond_6
    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 423
    :cond_7
    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1

    .line 428
    :cond_8
    move/from16 v8, v17

    goto/16 :goto_5

    .line 426
    :catch_1
    move-exception v0

    move/from16 v8, v17

    goto :goto_1

    .end local v16    # "uriType":I
    .end local v17    # "rowsUpdated":I
    .restart local v7    # "uriType":I
    .restart local v8    # "rowsUpdated":I
    :catch_2
    move-exception v0

    move/from16 v16, v7

    move/from16 v17, v8

    .end local v7    # "uriType":I
    .end local v8    # "rowsUpdated":I
    .restart local v16    # "uriType":I
    .restart local v17    # "rowsUpdated":I
    goto :goto_1

    .end local v16    # "uriType":I
    .end local v17    # "rowsUpdated":I
    .restart local v7    # "uriType":I
    .restart local v8    # "rowsUpdated":I
    :catch_3
    move-exception v0

    move/from16 v16, v7

    .line 427
    .end local v7    # "uriType":I
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    .restart local v16    # "uriType":I
    :goto_1
    invoke-static {v6, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto/16 :goto_5

    .line 392
    .end local v16    # "uriType":I
    .restart local v7    # "uriType":I
    :cond_9
    move/from16 v16, v7

    .end local v7    # "uriType":I
    .restart local v16    # "uriType":I
    :try_start_5
    const-string v0, "vowifisetting"

    invoke-virtual {v9, v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_6

    move v8, v0

    .line 394
    :try_start_6
    invoke-virtual {v3, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_5

    move/from16 v17, v8

    .end local v8    # "rowsUpdated":I
    .restart local v17    # "rowsUpdated":I
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 394
    .end local v17    # "rowsUpdated":I
    .restart local v8    # "rowsUpdated":I
    :cond_a
    move/from16 v17, v8

    .line 397
    .end local v8    # "rowsUpdated":I
    .restart local v17    # "rowsUpdated":I
    :goto_2
    invoke-virtual {v3, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 400
    :cond_b
    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 403
    :cond_c
    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_4

    .line 408
    :cond_d
    move/from16 v8, v17

    goto :goto_5

    .line 406
    :catch_4
    move-exception v0

    move/from16 v8, v17

    goto :goto_3

    .end local v17    # "rowsUpdated":I
    .restart local v8    # "rowsUpdated":I
    :catch_5
    move-exception v0

    move/from16 v17, v8

    .end local v8    # "rowsUpdated":I
    .restart local v17    # "rowsUpdated":I
    goto :goto_3

    .end local v17    # "rowsUpdated":I
    .restart local v8    # "rowsUpdated":I
    :catch_6
    move-exception v0

    .line 407
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_3
    invoke-static {v6, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_5

    .line 372
    .end local v16    # "uriType":I
    .restart local v7    # "uriType":I
    :cond_e
    move/from16 v16, v7

    .end local v7    # "uriType":I
    .restart local v16    # "uriType":I
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "id":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_7

    const-string v10, "_id="

    const-string v12, "iwlansetting"

    if-eqz v7, :cond_f

    .line 374
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v9, v12, v3, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    move v8, v6

    .end local v8    # "rowsUpdated":I
    .local v6, "rowsUpdated":I
    goto :goto_4

    .line 378
    .end local v6    # "rowsUpdated":I
    .restart local v8    # "rowsUpdated":I
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " and "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v12, v3, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_7

    move v8, v6

    .line 385
    .end local v0    # "id":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 383
    :catch_7
    move-exception v0

    .line 384
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v6, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_5

    .line 368
    .end local v16    # "uriType":I
    .restart local v7    # "uriType":I
    :cond_10
    move/from16 v16, v7

    .end local v7    # "uriType":I
    .restart local v16    # "uriType":I
    invoke-direct {v1, v9, v3, v4, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->updateIwlanSettings(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 369
    goto :goto_5

    .line 388
    .end local v16    # "uriType":I
    .restart local v7    # "uriType":I
    :cond_11
    move/from16 v16, v7

    .end local v7    # "uriType":I
    .restart local v16    # "uriType":I
    invoke-direct {v1, v9, v3, v4, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->updateEpdgSettings(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 389
    nop

    .line 444
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 445
    return v8

    .line 361
    .end local v9    # "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "uriType":I
    .restart local v7    # "uriType":I
    :catch_8
    move-exception v0

    move/from16 v16, v7

    .line 362
    .end local v7    # "uriType":I
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    .restart local v16    # "uriType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " occurred"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v8
.end method
