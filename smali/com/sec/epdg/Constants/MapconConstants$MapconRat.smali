.class public final enum Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapconRat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/MapconConstants$MapconRat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

.field public static final enum CS:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

.field public static final enum EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

.field public static final enum IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

.field public static final enum LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

.field public static final enum UNKNOWN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;


# instance fields
.field private final mText:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 131
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    const-string v1, "IWLAN"

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 132
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    const-string v1, "LTE"

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-direct {v0, v1, v3, v4, v1}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 133
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    const-string v1, "EHRPD"

    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-direct {v0, v1, v4, v5, v1}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 134
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2, v1}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->UNKNOWN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 135
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    const-string v1, "CS"

    const/4 v6, 0x4

    const/16 v7, 0x63

    invoke-direct {v0, v1, v6, v7, v1}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 125
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    sget-object v7, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    aput-object v7, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->UNKNOWN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

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

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->mValue:I

    .line 142
    iput-object p4, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->mText:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public static getMapconRat(I)Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .locals 5
    .param p0, "value"    # I

    .line 150
    invoke-static {}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->values()[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 151
    .local v3, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->toInt()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 152
    return-object v3

    .line 150
    .end local v3    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->UNKNOWN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    return-object v0
.end method

.method public static getMapconRat(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->values()[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 160
    .local v3, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    return-object v3

    .line 159
    .end local v3    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->UNKNOWN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    return-object v0
.end method

.method public static final isCsPreceedsIwlan([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z
    .locals 8
    .param p0, "sortedSet"    # [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 291
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 292
    return v0

    .line 293
    :cond_0
    const-class v1, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 294
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconRat;>;"
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 295
    .local v4, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v4    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_1
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "[MAPCON]"

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 299
    array-length v2, p0

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_5

    aget-object v6, p0, v5

    .line 300
    .local v6, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    sget-object v7, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    if-ne v6, v7, :cond_2

    .line 301
    const-string v0, "isCsPreceedsIwlan - meet CS first"

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return v4

    .line 303
    :cond_2
    sget-object v7, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    if-ne v6, v7, :cond_3

    .line 304
    const-string v2, "isCsPreceedsIwlan - meet IWLAN first"

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return v0

    .line 299
    .end local v6    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 309
    :cond_4
    const-string v0, "isCsPreceedsIwlan - No WLAN"

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return v4

    .line 313
    :cond_5
    return v0
.end method

.method public static final isIwlanAllowedType([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z
    .locals 4
    .param p0, "sortedSet"    # [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 169
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 170
    return v0

    .line 171
    :cond_0
    const-class v1, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 172
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconRat;>;"
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 173
    .local v3, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v3    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isIwlanOnlyAllowed([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z
    .locals 5
    .param p0, "sortedSet"    # [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 246
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 247
    return v0

    .line 248
    :cond_0
    const-class v1, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 249
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconRat;>;"
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 250
    .local v4, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v4    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_1
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 256
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_3
    :goto_1
    return v0

    .line 259
    :cond_4
    return v0
.end method

.method public static final isIwlanPreceedsCs([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z
    .locals 8
    .param p0, "sortedSet"    # [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 264
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 265
    return v0

    .line 266
    :cond_0
    const-class v1, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 267
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconRat;>;"
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 268
    .local v4, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v4    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_1
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "[MAPCON]"

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 272
    array-length v2, p0

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_5

    aget-object v6, p0, v5

    .line 273
    .local v6, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    sget-object v7, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->CS:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    if-ne v6, v7, :cond_2

    .line 274
    const-string v2, "isIwlanPreceedsCs - meet CS first"

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return v0

    .line 276
    :cond_2
    sget-object v7, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    if-ne v6, v7, :cond_3

    .line 277
    const-string v0, "isIwlanPreceedsCs - meet IWLAN first"

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return v4

    .line 272
    .end local v6    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 282
    :cond_4
    const-string v0, "isIwlanPreceedsCs - No CS"

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return v4

    .line 286
    :cond_5
    return v0
.end method

.method public static final isIwlanPreceedsLte([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z
    .locals 5
    .param p0, "sortedSet"    # [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 204
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 205
    return v0

    .line 206
    :cond_0
    const-class v1, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 207
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconRat;>;"
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 208
    .local v4, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v4    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_1
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 216
    :cond_2
    return v3

    .line 212
    :cond_3
    :goto_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->ordinal()I

    move-result v2

    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 213
    return v3

    .line 219
    :cond_4
    return v0
.end method

.method public static final isLteOnlyAllowed([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z
    .locals 6
    .param p0, "sortedSet"    # [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 226
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 227
    return v0

    .line 228
    :cond_0
    const-class v1, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 229
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconRat;>;"
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    .line 230
    .local v5, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v5    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_1
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 239
    :cond_2
    return v3

    .line 233
    :cond_3
    :goto_1
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    return v3

    .line 236
    :cond_4
    return v0
.end method

.method public static final isLtePreceedsIwlan([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z
    .locals 5
    .param p0, "sortedSet"    # [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 182
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 183
    return v0

    .line 184
    :cond_0
    const-class v1, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 185
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconRat;>;"
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 186
    .local v4, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v4    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_1
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    :cond_2
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 190
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->ordinal()I

    move-result v2

    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->ordinal()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 191
    return v3

    .line 197
    :cond_3
    return v0

    .line 194
    :cond_4
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 125
    const-class v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .locals 1

    .line 125
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->mText:Ljava/lang/String;

    return-object v0
.end method
