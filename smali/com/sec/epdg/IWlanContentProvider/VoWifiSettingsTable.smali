.class Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;
.super Ljava/lang/Object;
.source "VoWifiSettingsTable.java"


# static fields
.field protected static final COLUMN_EPDG_SUPPORT:Ljava/lang/String; = "epdg_support"

.field protected static final COLUMN_ID:Ljava/lang/String; = "_id"

.field protected static final COLUMN_OPERATOR_NUMERIC:Ljava/lang/String; = "operatornumeric"

.field protected static final COLUMN_PREV_IMSI:Ljava/lang/String; = "prev_imsi"

.field protected static final COLUMN_SIMMOBILITY_STATUS:Ljava/lang/String; = "simmobility_status"

.field public static final COLUMN_VOWIFI_MDN:Ljava/lang/String; = "vowifi_mdn"

.field public static final COLUMN_WIFI_CALL_ENABLE:Ljava/lang/String; = "wifi_call_enable"

.field public static final COLUMN_WIFI_CALL_PREFERRED:Ljava/lang/String; = "wifi_call_preferred"

.field public static final COLUMN_WIFI_CALL_WHEN_ROAMING:Ljava/lang/String; = "wifi_call_when_roaming"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS vowifisetting(_id integer primary key autoincrement, operatornumeric text not null, wifi_call_enable text not null, wifi_call_preferred text not null, wifi_call_when_roaming text not null, prev_imsi text not null, vowifi_mdn text not null, epdg_support text not null, simmobility_status text not null);"

.field protected static final TABLE_VOWIFISETTINGS:Ljava/lang/String; = "vowifisetting"

.field private static final TAG:Ljava/lang/String; = "[IWLANCONTENTPROVIDER]"

.field protected static newColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->newColumns:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    const-string v0, "CREATE TABLE IF NOT EXISTS vowifisetting(_id integer primary key autoincrement, operatornumeric text not null, wifi_call_enable text not null, wifi_call_preferred text not null, wifi_call_when_roaming text not null, prev_imsi text not null, vowifi_mdn text not null, epdg_support text not null, simmobility_status text not null);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private static findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pragma table_info("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 58
    .local v1, "rows":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 59
    :try_start_0
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, "columnIdx":I
    const/4 v3, 0x0

    .line 62
    .local v3, "columnValue":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 65
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "columnIdx":I
    .end local v3    # "columnValue":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2

    .line 70
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 71
    .end local v1    # "rows":Landroid/database/Cursor;
    :cond_3
    return v0
.end method

.method private static getVoWifiSettingsRow(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/ContentValues;
    .locals 18
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "found"    # Z
    .param p2, "operator"    # Ljava/lang/String;

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v2, "map":Landroid/content/ContentValues;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "prof_type":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->getMnoName0()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "curMno":Ljava/lang/String;
    const-string v5, "vowifi"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "[IWLANCONTENTPROVIDER]"

    if-eqz v5, :cond_3

    .line 181
    const-string v5, "simmobility_status"

    const-string v8, "epdg_support"

    const-string v9, "vowifi_mdn"

    const-string v10, "prev_imsi"

    const-string v11, "operatornumeric"

    const-string v12, "mnoname"

    const-string v13, "wifi_call_when_roaming"

    const-string v14, "wifi_call_preferred"

    const-string v15, "wifi_call_enable"

    const-string v7, "0"

    if-eqz v1, :cond_0

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    const/4 v3, 0x0

    .end local v3    # "prof_type":Ljava/lang/String;
    .local v16, "prof_type":Ljava/lang/String;
    invoke-interface {v0, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    invoke-virtual {v2, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {v0, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {v0, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {v0, v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-object v2

    .line 181
    .end local v16    # "prof_type":Ljava/lang/String;
    .restart local v3    # "prof_type":Ljava/lang/String;
    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    .line 191
    .end local v3    # "prof_type":Ljava/lang/String;
    .restart local v16    # "prof_type":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "default"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 192
    const-string v6, "00000"

    invoke-virtual {v2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {v0, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-interface {v0, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-interface {v0, v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-object v2

    .line 202
    :cond_2
    const-string v3, "getVoWifiSettingsRow: Not matched numeric."

    move-object/from16 v5, v17

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v3, 0x0

    return-object v3

    .line 206
    .end local v16    # "prof_type":Ljava/lang/String;
    .restart local v3    # "prof_type":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v3

    move-object v5, v6

    const/4 v3, 0x0

    .end local v3    # "prof_type":Ljava/lang/String;
    .restart local v16    # "prof_type":Ljava/lang/String;
    const-string v6, "getVoWifiSettingsRow: Expected \'vowifi\' tag is missing, returning null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v3
.end method

.method private static isEntryExistForOperator(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "operator"    # Ljava/lang/String;

    .line 212
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 213
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "vowifisetting"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 214
    const-string v1, "operatornumeric"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 218
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 219
    const-string v2, "[IWLANCONTENTPROVIDER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry exist for operator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    const/4 v2, 0x1

    .line 222
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_0
    return v2

    .line 216
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 222
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 223
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private static loadVoWifiSettings(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "operator"    # Ljava/lang/String;

    .line 137
    const-string v0, " while loading apns."

    const-string v1, "Got "

    const-string v2, "[IWLANCONTENTPROVIDER]"

    const/4 v3, 0x0

    .line 138
    .local v3, "found":Z
    if-eqz p1, :cond_6

    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 141
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    const-string v6, "vowifisettings"

    if-eq v4, v5, :cond_1

    .line 142
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadVoWifiSettings find: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_1

    .line 146
    :cond_0
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
    :cond_2
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 153
    invoke-static {p1, v3, p2}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->getVoWifiSettingsRow(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 154
    .local v4, "row":Landroid/content/ContentValues;
    if-eqz v4, :cond_5

    .line 155
    invoke-static {p0, p2}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->isEntryExistForOperator(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "vowifisetting"

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 156
    :try_start_2
    invoke-virtual {p0, v6, v4, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 158
    :cond_3
    invoke-virtual {p0, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 160
    :goto_2
    const/4 v3, 0x1

    .line 161
    nop

    .line 166
    .end local v4    # "row":Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    goto :goto_4

    .line 164
    :cond_5
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 167
    :catch_0
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "found":Z
    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "operator":Ljava/lang/String;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "found":Z
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "operator":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    throw v0

    .line 174
    :cond_6
    :goto_4
    return-void
.end method

.method private static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
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

    .line 90
    :cond_0
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "version"    # I

    .line 75
    nop

    .line 77
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    const-string v0, "vowifisetting"

    const-string v1, "epdg_support"

    invoke-static {p0, v0, v1}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "ALTER TABLE vowifisetting ADD COLUMN epdg_support Integer DEFAULT 0"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v0, "ALTER TABLE vowifisetting ADD COLUMN simmobility_status Integer DEFAULT 0"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public static resetDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 8
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "operator"    # Ljava/lang/String;

    .line 227
    const-string v0, "Exception while initializing database"

    const-string v1, "[IWLANCONTENTPROVIDER]"

    const/4 v2, 0x0

    .line 228
    .local v2, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/epdg_apns_conf.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .local v3, "confFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 231
    .local v4, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 232
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v2, v5

    .line 233
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 234
    const-string v5, "iwlanapns"

    invoke-static {v2, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 236
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 237
    invoke-static {p0, v2, p1}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->loadVoWifiSettings(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v5

    .line 245
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 248
    :goto_0
    return-void

    .line 242
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 238
    :catch_1
    move-exception v5

    .line 239
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "confFile":Ljava/io/File;
    .end local v4    # "confreader":Ljava/io/FileReader;
    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "operator":Ljava/lang/String;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confFile":Ljava/io/File;
    .restart local v4    # "confreader":Ljava/io/FileReader;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "operator":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 244
    :catch_2
    move-exception v6

    .line 245
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 246
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    nop

    .line 247
    :goto_3
    throw v5
.end method

.method protected static upgradeVoWifiSettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 16
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "operator"    # Ljava/lang/String;

    .line 93
    const-string v1, " while loading apns."

    const-string v2, "Got "

    const-string v0, "operatornumeric"

    const-string v3, "Got IOException while close FileReader object."

    const-string v4, "[IWLANCONTENTPROVIDER]"

    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->newColumns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 94
    const/4 v5, 0x0

    .line 95
    .local v5, "found":Z
    move-object/from16 v6, p1

    .line 96
    .local v6, "mccmnc":Ljava/lang/String;
    const/4 v7, 0x0

    .line 98
    .local v7, "confreader":Ljava/io/FileReader;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 99
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 101
    .local v10, "projection":[Ljava/lang/String;
    :try_start_1
    const-string v9, "vowifisetting"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 102
    .local v8, "messagesCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_1

    .line 103
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB last operator is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    move-object v9, v0

    if-eqz v8, :cond_0

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, v0

    :try_start_4
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "found":Z
    .end local v6    # "mccmnc":Ljava/lang/String;
    .end local v7    # "confreader":Ljava/io/FileReader;
    .end local v10    # "projection":[Ljava/lang/String;
    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "operator":Ljava/lang/String;
    :cond_0
    :goto_0
    throw v9

    .line 107
    .restart local v5    # "found":Z
    .restart local v6    # "mccmnc":Ljava/lang/String;
    .restart local v7    # "confreader":Ljava/io/FileReader;
    .restart local v10    # "projection":[Ljava/lang/String;
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "operator":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 110
    .end local v8    # "messagesCursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caught:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    const/4 v0, 0x0

    .line 112
    .local v0, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string v11, "etc/epdg_apns_conf.xml"

    invoke-direct {v8, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v8, "confFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v7, v9

    .line 114
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    move-object v0, v9

    .line 115
    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 116
    const-string v9, "iwlanapns"

    invoke-static {v0, v9}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 117
    move-object/from16 v9, p0

    move-object/from16 v11, p1

    :try_start_6
    invoke-static {v9, v0, v11}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->loadVoWifiSettings(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 122
    .end local v0    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "confFile":Ljava/io/File;
    .end local v10    # "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 124
    nop

    .line 126
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 130
    goto/16 :goto_6

    .line 127
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 128
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    goto :goto_3

    .line 122
    :catchall_2
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    goto :goto_4

    .line 118
    :catch_3
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "found":Z
    .end local v6    # "mccmnc":Ljava/lang/String;
    .end local v7    # "confreader":Ljava/io/FileReader;
    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "operator":Ljava/lang/String;
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "found":Z
    .restart local v6    # "mccmnc":Ljava/lang/String;
    .restart local v7    # "confreader":Ljava/io/FileReader;
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "operator":Ljava/lang/String;
    :catchall_3
    move-exception v0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 124
    if-eqz v7, :cond_3

    .line 126
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 130
    goto :goto_5

    .line 127
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 128
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    throw v0

    .line 93
    .end local v5    # "found":Z
    .end local v6    # "mccmnc":Ljava/lang/String;
    .end local v7    # "confreader":Ljava/io/FileReader;
    :cond_4
    move-object/from16 v9, p0

    move-object/from16 v11, p1

    .line 134
    :goto_6
    return-void
.end method
