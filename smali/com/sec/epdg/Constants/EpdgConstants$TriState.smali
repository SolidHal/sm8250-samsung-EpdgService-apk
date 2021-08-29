.class public final enum Lcom/sec/epdg/Constants/EpdgConstants$TriState;
.super Ljava/lang/Enum;
.source "EpdgConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/EpdgConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/EpdgConstants$TriState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/EpdgConstants$TriState;

.field public static final enum TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

.field public static final enum TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

.field public static final enum TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;


# instance fields
.field private mText:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    const-string v1, "TRI_UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/epdg/Constants/EpdgConstants$TriState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 16
    new-instance v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    const-string v1, "TRI_FALSE"

    const/4 v3, 0x1

    const-string v4, "FALSE"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sec/epdg/Constants/EpdgConstants$TriState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 17
    new-instance v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    const-string v1, "TRI_TRUE"

    const/4 v4, 0x2

    const-string v5, "TRUE"

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/sec/epdg/Constants/EpdgConstants$TriState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 14
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    sget-object v5, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->$VALUES:[Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->mValue:I

    .line 24
    iput-object p4, p0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->mText:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static get(I)Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .locals 2
    .param p0, "value"    # I

    .line 28
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 29
    .local v0, "ret":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 35
    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 32
    nop

    .line 39
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->$VALUES:[Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/EpdgConstants$TriState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    return-object v0
.end method


# virtual methods
.method protected getText()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->mText:Ljava/lang/String;

    return-object v0
.end method
