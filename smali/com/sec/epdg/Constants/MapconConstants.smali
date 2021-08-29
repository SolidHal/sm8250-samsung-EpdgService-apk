.class public Lcom/sec/epdg/Constants/MapconConstants;
.super Ljava/lang/Object;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;,
        Lcom/sec/epdg/Constants/MapconConstants$IfomAppList;,
        Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;,
        Lcom/sec/epdg/Constants/MapconConstants$IfomMode;,
        Lcom/sec/epdg/Constants/MapconConstants$MapconMode;,
        Lcom/sec/epdg/Constants/MapconConstants$MapconRat;,
        Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;,
        Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;,
        Lcom/sec/epdg/Constants/MapconConstants$MapconApnTypeList;
    }
.end annotation


# static fields
.field private static final BLOCK_HANDOFF:Ljava/lang/String; = "blockhandoff"

.field public static final COLUMN_APN_TYPE:Ljava/lang/String; = "apntype"

.field public static final COLUMN_IPFLOW_AFFECT_APN:Ljava/lang/String; = "affectapn"

.field public static final COLUMN_IPFLOW_ROUTING_RULE:Ljava/lang/String; = "routingrule"

.field public static final COLUMN_IPFLOW_RULE:Ljava/lang/String; = "ipflowrule"

.field public static final COLUMN_IPFLOW_TYPE:Ljava/lang/String; = "ipflowtype"

.field public static final COLUMN_MNO_NAME:Ljava/lang/String; = "mnoname"

.field public static final COLUMN_RAT_PREF_ORDER:Ljava/lang/String; = "ratpreforder"

.field public static final CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

.field public static final CONTENT_URI_IFOM_TABLE2:Landroid/net/Uri;

.field public static final CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

.field public static final CONTENT_URI_MAPCON_TABLE2:Landroid/net/Uri;

.field private static final E911_CALL:Ljava/lang/String; = "e911call"

.field private static final IMS_VIDEO_CALL:Ljava/lang/String; = "imsvideocall"

.field private static final IMS_VIDEO_VOICE_CALL:Ljava/lang/String; = "imsvideovoicecall"

.field private static final IMS_VOICE_CALL:Ljava/lang/String; = "imsvoicecall"

.field public static final IPFLOW_TYPE_APPLICATION:Ljava/lang/String; = "apps"

.field private static final NO_APPICATION_SERVICE:Ljava/lang/String; = "idle"

.field public static final SEPERATOR:Ljava/lang/String; = ":"

.field public static final TAG:Ljava/lang/String; = "[MAPCON]"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "content://mapconprovider/mapcon/mapcontable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    .line 21
    const-string v0, "content://mapconprovider/mapcon/mapcontable2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE2:Landroid/net/Uri;

    .line 402
    const-string v0, "content://mapconprovider/mapcon/ifomtable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    .line 403
    const-string v0, "content://mapconprovider/mapcon/ifomtable2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE2:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
