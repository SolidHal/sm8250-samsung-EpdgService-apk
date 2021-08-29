.class public final enum Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
.super Ljava/lang/Enum;
.source "EpdgTimers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgTimers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgTimerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/EpdgTimers$EpdgTimerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGCS:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGLTEMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGWIFIMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;


# instance fields
.field private final mCommand:I

.field private final mText:Ljava/lang/String;

.field private final mTimerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 113
    new-instance v6, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v1, "NOTDEFINED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "NOTDEFINED"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 114
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v8, "TEPDG"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/16 v11, 0x38

    const-string v12, "TEPDG"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 115
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v2, "TEPDGLTE"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/16 v5, 0x39

    const-string v6, "TEPDGLTE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 116
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v8, "TEPDGHODELAYWIFI"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const/16 v11, 0x3a

    const-string v12, "HODELAYWIFI"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 117
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v2, "TEPDGHODELAY"

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/16 v5, 0x3c

    const-string v6, "HODELAY"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 118
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v8, "TEPDGWIFIIPCONFIG"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const/16 v11, 0x4d

    const-string v12, "TEPDGWIFIIPCONFIG"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 119
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v2, "TEPDGLTEMEASUREMENT"

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/16 v5, 0x5b

    const-string v6, "TEPDGLTEMEASUREMENT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTEMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 120
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v8, "TEPDGWIFIMEASUREMENT"

    const/4 v9, 0x7

    const/4 v10, 0x7

    const/16 v11, 0x5c

    const-string v12, "TEPDEWIFIMEASUREMENT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 121
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v2, "TEPDGCALLPOPUP"

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x55

    const-string v6, "TEPDGCALLPOPUP"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 122
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v8, "TEPDGRTPHANDINRETRY"

    const/16 v9, 0x9

    const/16 v10, 0x9

    const/16 v11, 0x60

    const-string v12, "TEPDGRTPHANDINRETRY"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 123
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v2, "TEPDGCS"

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0x61

    const-string v6, "TEPDGCS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCS:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 112
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTEMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->$VALUES:[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "command"    # I
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput p3, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mTimerId:I

    .line 132
    iput p4, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mCommand:I

    .line 133
    iput-object p5, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mText:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 112
    const-class v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .locals 1

    .line 112
    sget-object v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->$VALUES:[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-object v0
.end method


# virtual methods
.method public getTimerCommand()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mCommand:I

    return v0
.end method

.method public getTimerId()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mTimerId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->mText:Ljava/lang/String;

    return-object v0
.end method
