.class public final Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraApp;)V
    .locals 3

    const/16 v0, 0xd

    const-string v1, "KPIAndCurrentDrain.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string p0, "CREATE TABLE events ( _id INTEGER PRIMARY KEY AUTOINCREMENT, keytag TEXT NOT NULL, keyvalue DOUBLE, keytype TEXT NOT NULL, taglevel INTEGER, parenttag TEXT, usecaseduration LONG, hdr TEXT, flash TEXT, panorama BOOLEAN, focus TEXT, geotag BOOLEAN, shutterttone BOOLEAN, videomode TEXT, camera TEXT, mode INTEGER, resolution TEXT, coldstart BOOLEAN, launchtype TEXT, timestamp long,calbrtnvalue TEXT,calibrationkeytype BOOLEAN, batterytemp TEXT, batterylevel TEXT, mediaserver TEXT, qcdaemon TEXT, motcam TEXT, currentdrain TEXT );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " creating sql database using query CREATE TABLE events ( _id INTEGER PRIMARY KEY AUTOINCREMENT, keytag TEXT NOT NULL, keyvalue DOUBLE, keytype TEXT NOT NULL, taglevel INTEGER, parenttag TEXT, usecaseduration LONG, hdr TEXT, flash TEXT, panorama BOOLEAN, focus TEXT, geotag BOOLEAN, shutterttone BOOLEAN, videomode TEXT, camera TEXT, mode INTEGER, resolution TEXT, coldstart BOOLEAN, launchtype TEXT, timestamp long,calbrtnvalue TEXT,calibrationkeytype BOOLEAN, batterytemp TEXT, batterylevel TEXT, mediaserver TEXT, qcdaemon TEXT, motcam TEXT, currentdrain TEXT );"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstrumentReportDBHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
