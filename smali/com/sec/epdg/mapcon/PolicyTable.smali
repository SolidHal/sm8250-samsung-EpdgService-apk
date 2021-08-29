.class public Lcom/sec/epdg/mapcon/PolicyTable;
.super Ljava/lang/Object;
.source "PolicyTable.java"


# static fields
.field public static final IfomPolicyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MapconPolicyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "[PolicyTable]"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/sec/epdg/mapcon/PolicyTable$1;

    invoke-direct {v0}, Lcom/sec/epdg/mapcon/PolicyTable$1;-><init>()V

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyTable;->MapconPolicyMap:Ljava/util/HashMap;

    .line 159
    new-instance v0, Lcom/sec/epdg/mapcon/PolicyTable$2;

    invoke-direct {v0}, Lcom/sec/epdg/mapcon/PolicyTable$2;-><init>()V

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyTable;->IfomPolicyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIfomPolicy(Ljava/lang/String;IZ)Landroid/content/ContentValues;
    .locals 10
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "preferred"    # I
    .param p2, "volteOn"    # Z

    .line 197
    invoke-static {p1}, Lcom/sec/epdg/mapcon/PolicyTable;->getPreferredModeString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "pref":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lcom/sec/epdg/mapcon/PolicyTable;->IfomPolicyMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 201
    .local v2, "json":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 202
    const/4 v3, 0x0

    return-object v3

    .line 205
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 206
    .local v3, "jarray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 207
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 208
    .local v5, "jObject":Lorg/json/JSONObject;
    const-string v6, "mode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "mode":Ljava/lang/String;
    const-string v7, "apptype"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "apptype":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v8, "volteOn"

    goto :goto_1

    :cond_1
    const-string v8, "volteOff"

    :goto_1
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "preferOrder":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 213
    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v5    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "mode":Ljava/lang/String;
    .end local v7    # "apptype":Ljava/lang/String;
    .end local v8    # "preferOrder":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    .end local v3    # "jarray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_3
    goto :goto_2

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 220
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v1
.end method

.method public static getMapconPolicy(Ljava/lang/String;IZ)Landroid/content/ContentValues;
    .locals 10
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "preferred"    # I
    .param p2, "volteOn"    # Z

    .line 124
    invoke-static {p1}, Lcom/sec/epdg/mapcon/PolicyTable;->getPreferredModeString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "pref":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lcom/sec/epdg/mapcon/PolicyTable;->MapconPolicyMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "json":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 129
    const/4 v3, 0x0

    return-object v3

    .line 132
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 133
    .local v3, "jarray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 134
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 135
    .local v5, "jObject":Lorg/json/JSONObject;
    const-string v6, "mode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "mode":Ljava/lang/String;
    const-string v7, "apntype"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "apntype":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v8, "volteOn"

    goto :goto_1

    :cond_1
    const-string v8, "volteOff"

    :goto_1
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "preferOrder":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 140
    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v5    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "mode":Ljava/lang/String;
    .end local v7    # "apntype":Ljava/lang/String;
    .end local v8    # "preferOrder":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    .end local v3    # "jarray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_3
    goto :goto_2

    .line 143
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 147
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v1
.end method

.method private static getPreferredModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "preferred"    # I

    .line 99
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 117
    const-string v0, "cspref"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "imspref"

    .line 114
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string v0, "csonly"

    .line 111
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    const-string v0, "wifionly"

    .line 108
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v0    # "result":Ljava/lang/String;
    :cond_3
    const-string v0, "cspref"

    .line 105
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v0    # "result":Ljava/lang/String;
    :cond_4
    const-string v0, "wifipref"

    .line 102
    .restart local v0    # "result":Ljava/lang/String;
    nop

    .line 120
    :goto_0
    return-object v0
.end method
