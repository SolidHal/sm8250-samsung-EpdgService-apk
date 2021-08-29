.class public Lcom/sec/epdg/VoWifiSettings;
.super Ljava/lang/Object;
.source "VoWifiSettings.java"


# static fields
.field public static final COLUMN_EPDG_SUPPORT:Ljava/lang/String; = "epdg_support"

.field public static final COLUMN_OPERATOR_NUMERIC:Ljava/lang/String; = "operatornumeric"

.field public static final COLUMN_PREV_IMSI:Ljava/lang/String; = "prev_imsi"

.field public static final COLUMN_SIMMOBILITY_STATUS:Ljava/lang/String; = "simmobility_status"

.field public static final COLUMN_VOWIFI_MDN:Ljava/lang/String; = "vowifi_mdn"

.field public static final COLUMN_WIFI_CALL_ENABLE:Ljava/lang/String; = "wifi_call_enable"

.field public static final COLUMN_WIFI_CALL_PREFERRED:Ljava/lang/String; = "wifi_call_preferred"

.field public static final COLUMN_WIFI_CALL_WHEN_ROAMING:Ljava/lang/String; = "wifi_call_when_roaming"

.field public static final CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

.field public static final CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

.field public static final CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

.field public static final CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "[VoWifiSettings]"

.field public static final VOWIFI_CALL_ENABLE_URI:Landroid/net/Uri;

.field public static final VOWIFI_CALL_ENABLE_URI2:Landroid/net/Uri;

.field public static final VOWIFI_CALL_PREFERRED_URI:Landroid/net/Uri;

.field public static final VOWIFI_CALL_PREFERRED_URI2:Landroid/net/Uri;

.field public static final VOWIFI_CALL_ROAMING_URI:Landroid/net/Uri;

.field public static final VOWIFI_CALL_ROAMING_URI2:Landroid/net/Uri;

.field public static final VOWIFI_MDN_URI:Landroid/net/Uri;

.field public static final VOWIFI_MDN_URI2:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "iwlansettings"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "todos"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "vowifisetting"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    .line 27
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "vowifisetting2"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    .line 28
    const-string v0, "content://iwlansettings/todos/iwlansetting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    .line 29
    const-string v0, "content://iwlansettings/todos/epdgsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    .line 30
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v6, "wifi_call_enable"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_CALL_ENABLE_URI:Landroid/net/Uri;

    .line 31
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v7, "wifi_call_preferred"

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_CALL_PREFERRED_URI:Landroid/net/Uri;

    .line 32
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v8, "wifi_call_when_roaming"

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_CALL_ROAMING_URI:Landroid/net/Uri;

    .line 33
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "vowifi_mdn"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_MDN_URI:Landroid/net/Uri;

    .line 34
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_CALL_ENABLE_URI2:Landroid/net/Uri;

    .line 35
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_CALL_PREFERRED_URI2:Landroid/net/Uri;

    .line 36
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_CALL_ROAMING_URI2:Landroid/net/Uri;

    .line 37
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_MDN_URI2:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsNeedVoWifiSettingsUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZ)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "Mccmnc"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I
    .param p5, "checkMdn"    # Z
    .param p6, "voWiFiEnableFromMPS"    # Z

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "result":Z
    move v1, p3

    .line 291
    .local v1, "PreSlotId":I
    const-string v2, "prev_imsi"

    const-string v3, ""

    invoke-static {p0, v2, v3, p3}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "PreSimImsi":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsNeedVoWifiSettingsUpdate() Pre Imsi :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Current Imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "[VoWifiSettings]"

    invoke-static {v4, v5, v3}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {p0, p4}, Lcom/sec/epdg/VoWifiSettings;->readWfcSetting(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v3

    .line 296
    .local v3, "LoadWfcSettingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 297
    const-string v4, "SlotId"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 298
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    move v1, v4

    .line 301
    :cond_1
    if-eq v1, p3, :cond_2

    .line 302
    const-string v4, "IsNeedVoWifiSettingsUpdate() SIM SLOT is changed."

    invoke-static {v5, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x1

    goto :goto_1

    .line 304
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 305
    const-string v4, "IsNeedVoWifiSettingsUpdate() imsi is different."

    invoke-static {v5, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x1

    .line 307
    invoke-static {p3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isNeedProvisioning()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    if-eqz p5, :cond_4

    .line 309
    const-string v4, "IsNeedVoWifiSettingsUpdate() msisdn is same."

    invoke-static {v5, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x0

    goto :goto_1

    .line 313
    :cond_3
    if-nez v3, :cond_4

    if-eqz p6, :cond_4

    .line 314
    const-string v4, "IsNeedVoWifiSettingsUpdate() No prev User setting"

    invoke-static {v5, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x1

    .line 317
    :cond_4
    :goto_1
    return v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "phoneId"    # I

    .line 83
    move-object/from16 v1, p1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v4, v0

    .line 84
    .local v4, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 86
    .local v8, "dbValue":I
    const/4 v0, 0x0

    .line 88
    .local v0, "messagesCursor":Landroid/database/Cursor;
    if-nez p3, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 96
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    .local v2, "messagesCursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v8, v0

    .line 99
    const-string v0, "[VoWifiSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt() "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 108
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v2, :cond_3

    .line 109
    goto :goto_3

    .line 103
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_3

    .line 109
    goto :goto_3

    .line 108
    :goto_1
    if-eqz v2, :cond_1

    .line 109
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 110
    const/4 v2, 0x0

    .line 112
    :cond_1
    throw v0

    .line 101
    :cond_2
    move/from16 v8, p2

    .line 108
    :goto_2
    if-eqz v2, :cond_3

    .line 109
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 110
    const/4 v2, 0x0

    .line 113
    :cond_3
    return v8
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 48
    move-object/from16 v1, p1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v4, v0

    .line 49
    .local v4, "projection":[Ljava/lang/String;
    const-string v8, ""

    .line 51
    .local v8, "dbValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 53
    .local v0, "messagesCursor":Landroid/database/Cursor;
    if-nez p3, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 60
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    .local v2, "messagesCursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v2, :cond_4

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 61
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 64
    const-string v0, "[VoWifiSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString() "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "operatornumeric"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "Suppressed"

    goto :goto_2

    :cond_2
    :goto_1
    move-object v5, v8

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 74
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v2, :cond_5

    .line 75
    goto :goto_5

    .line 69
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_5

    .line 75
    goto :goto_5

    .line 74
    :goto_3
    if-eqz v2, :cond_3

    .line 75
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v2, 0x0

    .line 78
    :cond_3
    throw v0

    .line 67
    :cond_4
    move-object/from16 v8, p2

    .line 74
    :goto_4
    if-eqz v2, :cond_5

    .line 75
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v2, 0x0

    .line 79
    :cond_5
    return-object v8
.end method

.method protected static readWfcSetting(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "WfcSettingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 230
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "imsi":Ljava/lang/String;
    const-string v3, "WFCSETTING"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 232
    .local v3, "sp":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "SavedSetting":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 236
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .local v6, "ReadJson":Lorg/json/JSONObject;
    const-string v7, "[VoWifiSettings]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readWfcSetting() Setting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {v6}, Lcom/sec/epdg/EpdgUtils;->getMapFromJsonObject(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 241
    .end local v6    # "ReadJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v4

    .line 240
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 243
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static resetDbValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 151
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 159
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void
.end method

.method public static resetVowifiMdnCache(Landroid/content/Context;I)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 247
    const-string v0, "vowifi_mdn"

    const-string v1, "0"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/epdg/VoWifiSettings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    return-void
.end method

.method protected static resetWfcSetting(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 162
    const-string v0, "WFCSETTING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 164
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 165
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return-void
.end method

.method protected static resetWifiCallingIfMDNChanged(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vowifiSetting"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .param p4, "mccMnc"    # Ljava/lang/String;
    .param p5, "lineNum"    # Ljava/lang/String;

    .line 251
    const-string v0, "vowifi_mdn"

    const-string v1, "0"

    invoke-static {p0, v0, v1, p2}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "mdn":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetWifiCallingIfMDNChanged: lineNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vowifi mdn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "[VoWifiSettings]"

    invoke-static {v2, v3, v1}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 254
    if-eqz p5, :cond_0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 257
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 258
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "imsi":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM mdn and vowifi mdn parameter is differentreset to default settings for MCCMNC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " imsi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz v4, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    invoke-static {p0, p4, p2}, Lcom/sec/epdg/VoWifiSettings;->resetDbValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 264
    const-string v2, "prev_imsi"

    invoke-static {p0, v2, v4, p2}, Lcom/sec/epdg/VoWifiSettings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "imsi":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected static savePreviousSimSettings(Landroid/content/Context;IIII)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "enable"    # I
    .param p3, "pref"    # I
    .param p4, "roamingPref"    # I

    .line 201
    const-string v0, "prev_imsi"

    const-string v1, ""

    invoke-static {p0, v0, v1, p1}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "preImsi":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    if-ne p3, v3, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    const-string v3, "operatornumeric"

    invoke-static {p0, v3, v1, p1}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "PreMccMnc":Ljava/lang/String;
    const-string v5, "vowifi_mdn"

    invoke-static {p0, v5, v1, p1}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "PrelineNum":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v6, "WfcSettingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "wifi_call_enable"

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "wifi_call_preferred"

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "wifi_call_when_roaming"

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SlotId"

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {v6}, Lcom/sec/epdg/EpdgUtils;->getJsonStringFromMap(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    .line 220
    .local v0, "WriteJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    const-string v5, "WFCSETTING"

    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 221
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 222
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    return-void

    .line 203
    .end local v0    # "WriteJson":Lorg/json/JSONObject;
    .end local v1    # "PrelineNum":Ljava/lang/String;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "PreMccMnc":Ljava/lang/String;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "WfcSettingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const-string v0, "[VoWifiSettings]"

    const-string v1, "nothing to save from previous sim settings or setting value is wrong."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected static saveWfcSetting(ZZLandroid/content/Context;Ljava/lang/String;II)V
    .locals 9
    .param p0, "force"    # Z
    .param p1, "vowifiEnableFromMps"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mccMnc"    # Ljava/lang/String;
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .line 171
    if-nez p1, :cond_0

    if-nez p0, :cond_0

    .line 172
    const-string v0, "[VoWifiSettings]"

    const-string v1, "saveWfcSetting : MPS Not Support."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "WfcSettingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "phone"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 178
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "imsi":Ljava/lang/String;
    move-object v3, p3

    .line 180
    .local v3, "Mccmnc":Ljava/lang/String;
    invoke-virtual {v1, p5}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "lineNum":Ljava/lang/String;
    const-string v5, "prev_imsi"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v5, "operatornumeric"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v5, "vowifi_mdn"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    nop

    .line 185
    const-string v5, "wifi_call_enable"

    const/4 v6, 0x0

    invoke-static {p2, v5, v6, p4}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    nop

    .line 187
    const-string v5, "wifi_call_preferred"

    invoke-static {p2, v5, v6, p4}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    nop

    .line 189
    const-string v5, "wifi_call_when_roaming"

    invoke-static {p2, v5, v6, p4}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "SlotId"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getJsonStringFromMap(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v5

    .line 193
    .local v5, "WriteJson":Lorg/json/JSONObject;
    const-string v7, "WFCSETTING"

    invoke-virtual {p2, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 194
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 195
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v7, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "phoneId"    # I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInt() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VoWifiSettings]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 147
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setString() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "operatornumeric"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Suppressed"

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, p2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "[VoWifiSettings]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x0

    if-nez p3, :cond_2

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_2
    goto :goto_3

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 131
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    return-void
.end method

.method public static setVowifiSetting(Landroid/content/Context;IIZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "enable"    # I
    .param p3, "sendIntent"    # Z

    .line 272
    const/4 v0, -0x1

    const-string v1, "wifi_call_enable"

    if-eq p2, v0, :cond_0

    .line 273
    invoke-static {p0, v1, p2, p1}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 275
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 276
    .local v2, "slotId":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 277
    .local v0, "currentValue":I
    if-eq v0, p2, :cond_1

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    :cond_1
    if-eqz p3, :cond_2

    .line 281
    new-instance v3, Landroid/content/Intent;

    const-string v4, "action_wifi_call_enable_broadcast"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, "wifiCall":Landroid/content/Intent;
    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v1, "phoneId"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    .end local v3    # "wifiCall":Landroid/content/Intent;
    :cond_2
    return-void
.end method
