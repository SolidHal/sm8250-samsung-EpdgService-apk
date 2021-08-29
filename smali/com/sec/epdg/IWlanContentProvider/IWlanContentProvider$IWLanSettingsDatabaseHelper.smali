.class Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IWlanContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IWLanSettingsDatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 553
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v0

    const-string v1, "iwlansettings.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 555
    iput-object p1, p0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 556
    return-void
.end method

.method private static UpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 619
    const-string v0, "Exception while initializing database"

    const-string v1, "[IWLANCONTENTPROVIDER]"

    const/4 v2, 0x0

    .line 620
    .local v2, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/epdg_apns_conf.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 621
    .local v3, "confFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 623
    .local v4, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 624
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v2, v5

    .line 625
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 626
    const-string v5, "iwlanapns"

    invoke-static {v2, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 628
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/sec/epdg/IWlanContentProvider/VoWifiStateTable;->loadVoWifiState(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 629
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable;->loadEpdgState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 630
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable2;->loadEpdgState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 631
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->upgradeVoWifiSettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable2;->upgradeVoWifiSettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 633
    invoke-static {p0, v2}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->loadIwlanApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 634
    invoke-static {p0, v2}, Lcom/sec/epdg/IWlanContentProvider/EpdgSettingsTable;->loadEpdgSettings(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 643
    goto :goto_0

    .line 641
    :catch_0
    move-exception v5

    .line 642
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 646
    :goto_0
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$300()Lcom/sec/epdg/IWlanContentProvider/HashManager;

    move-result-object v0

    const-string v1, "epdgupdate"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanContentProvider/HashManager;->removeHash(Ljava/lang/String;)V

    .line 647
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$400()Lcom/sec/epdg/IWlanContentProvider/HashManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanContentProvider/HashManager;->removeHash(Ljava/lang/String;)V

    .line 648
    return-void

    .line 639
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 635
    :catch_1
    move-exception v5

    .line 636
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
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
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 640
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confFile":Ljava/io/File;
    .restart local v4    # "confreader":Ljava/io/FileReader;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 641
    :catch_2
    move-exception v6

    .line 642
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 643
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    nop

    .line 644
    :goto_3
    throw v5
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 559
    const-string v0, "binary_version"

    const-string v1, "iwlan-ver"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 560
    .local v0, "version":I
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->isVersionUpdated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->saveVersion(Landroid/content/Context;)I

    move-result v0

    .line 563
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[IWLANCONTENTPROVIDER]"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v0
.end method

.method private static initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 586
    const-string v0, "Exception while initializing database"

    const-string v1, "[IWLANCONTENTPROVIDER]"

    const/4 v2, 0x0

    .line 588
    .local v2, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/epdg_apns_conf.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 589
    .local v3, "confFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 591
    .local v4, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 592
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v2, v5

    .line 593
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 594
    const-string v5, "iwlanapns"

    invoke-static {v2, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$100()Landroid/telephony/TelephonyManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 597
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$100()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 599
    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/sec/epdg/IWlanContentProvider/VoWifiStateTable;->loadVoWifiState(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 600
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable;->loadEpdgState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 601
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable2;->loadEpdgState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 602
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable2;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 604
    invoke-static {p0, v2}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->loadIwlanApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 605
    invoke-static {p0, v2}, Lcom/sec/epdg/IWlanContentProvider/EpdgSettingsTable;->loadEpdgSettings(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    goto :goto_0

    .line 612
    :catch_0
    move-exception v5

    .line 613
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 616
    :goto_0
    return-void

    .line 610
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 606
    :catch_1
    move-exception v5

    .line 607
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
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
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confFile":Ljava/io/File;
    .restart local v4    # "confreader":Ljava/io/FileReader;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 612
    :catch_2
    move-exception v6

    .line 613
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 614
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    nop

    .line 615
    :goto_3
    throw v5
.end method

.method private static isVersionUpdated(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 685
    const-string v0, "binary_version"

    const-string v1, "iwlan"

    invoke-static {p0, v0, v1}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "prevVer":Ljava/lang/String;
    const-string v1, "ro.build.PDA"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "pdaVer":Ljava/lang/String;
    const-string v3, "ril.official_cscver"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "cscVer":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "currVer":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 692
    const/4 v4, 0x1

    return v4

    .line 694
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private static saveVersion(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 698
    const-string v0, "ro.build.PDA"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "pdaVer":Ljava/lang/String;
    const-string v2, "ril.official_cscver"

    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "cscVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "currVer":Ljava/lang/String;
    const-string v3, "binary_version"

    const-string v4, "iwlan-ver"

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 703
    .local v6, "prevIwlanVer":I
    const v7, 0x7fffffff

    if-ge v6, v7, :cond_0

    if-ge v6, v5, :cond_1

    .line 704
    :cond_0
    const/4 v6, 0x1

    .line 706
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .line 707
    .local v5, "currIwlanVer":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveVersion currIwlanVer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[IWLANCONTENTPROVIDER]"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v7, "iwlan"

    invoke-static {p0, v3, v7, v2}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$600(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {p0, v3, v4, v5}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider;->access$700(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 710
    return v5
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 572
    :try_start_0
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/VoWifiStateTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 573
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 574
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable2;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 575
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 576
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable2;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 577
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 578
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgSettingsTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 579
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " occurred"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[IWLANCONTENTPROVIDER]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 671
    const-class v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/VoWifiStateTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 675
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 676
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable2;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 677
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 678
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/EpdgSettingsTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 679
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 680
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable2;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 681
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->UpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 682
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 655
    const-class v0, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/VoWifiStateTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 659
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 660
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable2;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 661
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/IWLanSettingsTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 662
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/EpdgSettingsTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 663
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 664
    invoke-static {p1, p3}, Lcom/sec/epdg/IWlanContentProvider/VoWifiSettingsTable2;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 665
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/IWlanContentProvider$IWLanSettingsDatabaseHelper;->UpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 666
    return-void
.end method
