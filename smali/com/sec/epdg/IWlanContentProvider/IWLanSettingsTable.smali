.class Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;
.super Ljava/lang/Object;
.source "IWLanSettingsTable.java"


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "[IWLANCONTENTPROVIDER]"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v0, "databaseCreateBuilder":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "iwlansetting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " integer primary key autoincrement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->values()[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 32
    .local v4, "column":Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v5, " text not null"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .end local v4    # "column":Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_0
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->DATABASE_CREATE:Ljava/lang/String;

    .line 39
    .end local v0    # "databaseCreateBuilder":Ljava/lang/StringBuilder;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->DATABASE_CREATE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private static getIwlanSettingsRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->values()[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    move-result-object v0

    array-length v0, v0

    .line 109
    .local v0, "count":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 111
    .local v1, "row":Landroid/content/ContentValues;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 112
    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "mnoValue":Ljava/lang/String;
    sget-object v4, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 117
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->values()[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->getName()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "attributeName":Ljava/lang/String;
    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "attributeValue":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v7, "mtu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    const-string v6, "0"

    .line 122
    :cond_0
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v5    # "attributeName":Ljava/lang/String;
    .end local v6    # "attributeValue":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v4    # "i":I
    :cond_1
    return-object v1

    .line 127
    .end local v2    # "mnoValue":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Expected \'apn\' tag is missing"

    invoke-direct {v2, v4, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static loadIwlanApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 63
    const-string v0, " while loading apns."

    const-string v1, "Got "

    const-string v2, "[IWLANCONTENTPROVIDER]"

    if-eqz p1, :cond_6

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 66
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 67
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    const-string v5, "iwlansettings"

    if-eq v3, v4, :cond_1

    .line 68
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    goto :goto_1

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 75
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 78
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    goto/16 :goto_5

    .line 80
    :cond_3
    :goto_3
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 81
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->getIwlanSettingsRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v3

    .line 82
    .local v3, "row":Landroid/content/ContentValues;
    const-string v4, "iwlansetting"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 84
    .end local v3    # "row":Landroid/content/ContentValues;
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    .line 88
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadIwlanApns(): Incorrect start tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " should be iwlansettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Incorrect start tag for iwlan setting table"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 92
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    throw v0

    .line 99
    :cond_6
    :goto_5
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

    .line 57
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

    .line 60
    :cond_0
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "version"    # I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside iwlan setting table onupgrade: version is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IWLANCONTENTPROVIDER]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    nop

    .line 50
    const-string v0, "DROP TABLE IF EXISTS iwlansetting"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    return-void
.end method
