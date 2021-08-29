.class public final enum Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;
.super Ljava/lang/Enum;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMSRegStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

.field public static final enum DEREG_SUCCEEDED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_BLOCKED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_FAILED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_IN_PROGRESS:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_NOT_STARTED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;


# instance fields
.field private final mStatus:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 64
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    .line 65
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_IN_PROGRESS:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    .line 66
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    .line 67
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v1}, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_FAILED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    .line 68
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    const-string v1, "DEREG_SUCCEEDED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v1}, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    .line 69
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_BLOCKED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7, v1}, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_BLOCKED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    .line 63
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    sget-object v8, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_IN_PROGRESS:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_FAILED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->$VALUES:[Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "status"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->mStatus:I

    .line 77
    iput-object p4, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->mText:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 63
    const-class v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;
    .locals 1

    .line 63
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->$VALUES:[Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->mText:Ljava/lang/String;

    return-object v0
.end method
