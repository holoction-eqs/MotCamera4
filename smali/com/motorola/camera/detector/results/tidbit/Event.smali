.class public final Lcom/motorola/camera/detector/results/tidbit/Event;
.super Landroidx/loader/app/LoaderManager;
.source "SourceFile"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public attendees:[Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public end:Ljava/util/Date;

.field public endAllDay:Z

.field public latitude:D

.field public location:Ljava/lang/String;

.field public longitude:D

.field public organizer:Ljava/lang/String;

.field public start:Ljava/util/Date;

.field public startAllDay:Z

.field public summary:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/Event;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/loader/app/LoaderManager;-><init>()V

    const-wide v0, -0x3f70bf3333333333L    # -1000.1

    iput-wide v0, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    iput-wide v0, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    return-void
.end method


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/event"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "title"

    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v3, "description"

    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v3, v5

    :cond_1
    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v3, "beginTime"

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move v3, v5

    :cond_2
    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    if-eqz v6, :cond_3

    const-string v3, "endTime"

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move v3, v5

    :cond_3
    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v3, "eventLocation"

    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v3, v5

    :cond_4
    const/4 v6, 0x0

    if-eqz v3, :cond_5

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EVENT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, v7, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    move-object v3, v6

    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-wide v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    const-wide v7, -0x3f70bf3333333333L    # -1000.1

    cmpl-double v2, v2, v7

    const-string v3, "android.intent.action.VIEW"

    if-nez v2, :cond_8

    iget-wide v9, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    cmpl-double v2, v9, v7

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "geo:0,0?q="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, v7, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "geo:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, v7, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_3

    :cond_9
    move-object v3, v6

    :goto_3
    if-eqz v3, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v0, v5}, Lcom/motorola/camera/detector/results/tidbit/Event;->getCopyString(Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f120035

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_b

    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_4

    :cond_b
    move-object v7, v6

    :goto_4
    if-eqz v7, :cond_c

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string v2, "\r\n"

    const-string v3, "LOCATION:"

    const-string v7, "DESCRIPTION:"

    const-string v8, "SUMMARY:"

    const-string v9, "DTEND:"

    const-string v10, "DTSTART:"

    const-string v11, "DTSTAMP:"

    const-string v12, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    goto/16 :goto_6

    :cond_d
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v13}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v13

    const-string v14, "invite.ics"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v13, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/FileWriter;

    invoke-direct {v14, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v14, "BEGIN:VCALENDAR\r\n"

    invoke-virtual {v13, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v14, "VERSION:2.0\r\n"

    invoke-virtual {v13, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v14, "PRODID:-//Motorola//NONSGML v1.0//EN\r\n"

    invoke-virtual {v13, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v14, "BEGIN:VEVENT\r\n"

    invoke-virtual {v13, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UID:%s@motorola.com"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v5, v4

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/motorola/camera/detector/results/tidbit/Event;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    invoke-virtual {v5, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_e
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    invoke-virtual {v5, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_f
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_10
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_11
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_12
    const-string v0, "END:VEVENT\r\n"

    invoke-virtual {v13, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "END:VCALENDAR\r\n"

    invoke-virtual {v13, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v13}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/calendar"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v12}, Lcom/motorola/camera/Util;->getUriForFile(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v6, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v6, v2, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v6, v13

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v6, :cond_13

    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_13
    throw v0

    :catch_0
    move-object v13, v6

    :catch_1
    if-eqz v13, :cond_14

    invoke-static {v13}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_14
    :goto_6
    if-eqz v6, :cond_15

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    return-object v1
.end method

.method public final getCopyString(Z)Ljava/lang/String;
    .locals 7

    const-string v0, "["

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-eqz p1, :cond_0

    const p1, 0x7f120061

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const p1, 0x7f12005c

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const p1, 0x7f120060

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->startAllDay:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0x7f12005a

    const-string v6, ""

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v6

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const p1, 0x7f12005d

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->endAllDay:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const p1, 0x7f12005e

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-wide v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    const-wide v5, -0x3f70bf3333333333L    # -1000.1

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_3

    iget-wide v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_3

    const p1, 0x7f120062

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    const p1, 0x7f12005f

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->organizer:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const p1, 0x7f12005b

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->attendees:[Ljava/lang/String;

    const v0, 0x7f120058

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, p0, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/detector/results/tidbit/Event;->getCopyString(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getFieldsCount()I
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->organizer:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->attendees:[Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    array-length v3, v3

    :goto_5
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    move v3, v1

    :goto_6
    add-int/2addr v0, v3

    iget-wide v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    const-wide v5, -0x3f70bf3333333333L    # -1000.1

    cmpl-double v3, v3, v5

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    move v3, v1

    :goto_7
    add-int/2addr v0, v3

    iget-wide v3, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    cmpl-double p0, v3, v5

    if-nez p0, :cond_8

    move v1, v2

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Event:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f12006e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event{summary=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startAllDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->startAllDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endAllDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->endAllDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', organizer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', attendees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->attendees:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
