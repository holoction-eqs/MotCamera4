.class public final Lcom/google/android/gms/common/GoogleApiAvailability;
.super Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
.source "SourceFile"


# static fields
.field public static final zaa:Ljava/lang/Object;

.field public static final zab:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-direct {v0}, Lcom/google/android/gms/common/GoogleApiAvailability;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method public static zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zad(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eq p1, v4, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const v1, 0x104000a

    goto :goto_0

    :cond_4
    const v1, 0x7f1200b3

    goto :goto_0

    :cond_5
    const v1, 0x7f1200bd

    goto :goto_0

    :cond_6
    const v1, 0x7f1200b6

    :goto_0
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zag(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Creating dialog for Google Play services availability issue. ConnectionResult=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string p2, "GoogleApiAvailability"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static zad(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    const-string v0, "Cannot display null dialog"

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p0, Landroidx/fragment/app/FragmentActivity;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/common/SupportErrorDialogFragment;

    invoke-direct {v2}, Lcom/google/android/gms/common/SupportErrorDialogFragment;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zaa:Landroid/app/Dialog;

    if-eqz p3, :cond_0

    iput-object p3, v2, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    invoke-virtual {v2, p0, p2}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->show(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/common/ErrorDialogFragment;

    invoke-direct {v2}, Lcom/google/android/gms/common/ErrorDialogFragment;-><init>()V

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, Lcom/google/android/gms/common/ErrorDialogFragment;->zaa:Landroid/app/Dialog;

    if-eqz p3, :cond_3

    iput-object p3, v2, Lcom/google/android/gms/common/ErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    :cond_3
    invoke-virtual {v2, p0, p2}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getErrorResolutionIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public final isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public final showErrorDialogFragment(Landroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    const-string v0, "d"

    invoke-super {p0, p1, v0, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/common/internal/zad;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/internal/zad;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p2, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p0, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public final zae(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v6, "GoogleApiAvailability"

    invoke-static {v6, v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, 0x12

    const/4 v5, 0x1

    if-ne v1, v3, :cond_0

    new-instance v1, Lcom/google/android/gms/common/zac;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/zac;-><init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/content/Context;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v3, 0x6

    if-nez v2, :cond_2

    if-ne v1, v3, :cond_1

    const-string v0, "GoogleApiAvailability"

    const-string v1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne v1, v3, :cond_3

    const-string v6, "common_google_play_services_resolution_required_title"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/common/internal/zac;->zag(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const v7, 0x7f1200ba

    if-nez v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    if-eq v1, v3, :cond_6

    const/16 v3, 0x13

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/common/internal/zac;->zad(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zac;->zaa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "common_google_play_services_resolution_required_text"

    invoke-static {v0, v8, v3}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "notification"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Landroid/app/NotificationManager;

    new-instance v10, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v10, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-boolean v5, v10, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    iget-object v11, v10, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v12, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v11, Landroid/app/Notification;->flags:I

    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    new-instance v6, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v6, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$BigTextStyle;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v11, Lkotlin/collections/ArraysUtilJVM;->zzd:Ljava/lang/Boolean;

    if-nez v11, :cond_7

    const-string v11, "android.hardware.type.watch"

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lkotlin/collections/ArraysUtilJVM;->zzd:Ljava/lang/Boolean;

    :cond_7
    sget-object v6, Lkotlin/collections/ArraysUtilJVM;->zzd:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v11, 0x2

    if-eqz v6, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iget-object v6, v10, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput v3, v6, Landroid/app/Notification;->icon:I

    iput v11, v10, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysUtilJVM;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f1200c2

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v10, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v7, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v7, v3, v2}, Landroidx/core/app/NotificationCompat$Action;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iput-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_9
    iget-object v6, v10, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const v12, 0x108008a

    iput v12, v6, Landroid/app/Notification;->icon:I

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v10, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v10, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide v6, v8, Landroid/app/Notification;->when:J

    iput-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    :goto_3
    sget-object v2, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "com.google.android.gms.availability"

    invoke-virtual {v9, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f1200b9

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_a

    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v6, 0x4

    invoke-direct {v3, v2, v0, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto :goto_4

    :cond_a
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v9, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_b
    iput-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->createBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v6, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v3, Landroid/app/Notification;->icon:I

    iget v8, v3, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v3, Landroid/app/Notification;->ledARGB:I

    iget v8, v3, Landroid/app/Notification;->ledOnMS:I

    iget v12, v3, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v6, v7, v8, v12}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v3, Landroid/app/Notification;->flags:I

    and-int/2addr v7, v11

    const/4 v8, 0x0

    if-eqz v7, :cond_c

    move v7, v5

    goto :goto_5

    :cond_c
    move v7, v8

    :goto_5
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_d

    move v7, v5

    goto :goto_6

    :cond_d
    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_e

    move v7, v5

    goto :goto_7

    :cond_e
    move v7, v8

    :goto_7
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v3, Landroid/app/Notification;->defaults:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_f

    move v7, v5

    goto :goto_8

    :cond_f
    move v7, v8

    :goto_8
    invoke-virtual {v6, v4, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8, v8, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    invoke-static {v2, v4}, Landroidx/core/app/NotificationCompatBuilder$Api16Impl;->setSubText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {v6, v8}, Landroidx/core/app/NotificationCompatBuilder$Api16Impl;->setUsesChronometer(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v10, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    invoke-static {v6, v7}, Landroidx/core/app/NotificationCompatBuilder$Api16Impl;->setPriority(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v6, v10, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v12, "android.support.allowGeneratedReplies"

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v13

    if-eqz v13, :cond_10

    invoke-static {v13, v4}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->toIcon(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v13

    goto :goto_a

    :cond_10
    move-object v13, v4

    :goto_a
    iget-object v14, v7, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v15, v7, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v13, v14, v15}, Landroidx/core/app/NotificationCompatBuilder$Api23Impl;->createBuilder(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v13

    new-instance v14, Landroid/os/Bundle;

    iget-object v15, v7, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    if-eqz v15, :cond_11

    invoke-direct {v14, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_b

    :cond_11
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    :goto_b
    iget-boolean v15, v7, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    invoke-virtual {v14, v12, v15}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v13, v15}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setAllowGeneratedReplies(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v12, "android.support.action.semanticAction"

    invoke-virtual {v14, v12, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v13, v8}, Landroidx/core/app/NotificationCompatBuilder$Api28Impl;->setSemanticAction(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    invoke-static {v13, v8}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setContextual(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    invoke-static {v13, v8}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->setAuthenticationRequired(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v12, "android.support.action.showsUserInterface"

    iget-boolean v7, v7, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    invoke-virtual {v14, v12, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v13, v14}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->addExtras(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    invoke-static {v13}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->build(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->addAction(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_9

    :cond_12
    iget-object v6, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_13

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_13
    iget-boolean v6, v10, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-static {v2, v6}, Landroidx/core/app/NotificationCompatBuilder$Api17Impl;->setShowWhen(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-boolean v6, v10, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    invoke-static {v2, v6}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setLocalOnly(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    invoke-static {v2, v4}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setGroup(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-static {v2, v4}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setSortKey(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-static {v2, v8}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setGroupSummary(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    invoke-static {v2, v4}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setCategory(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-static {v2, v8}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setColor(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    invoke-static {v2, v8}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setVisibility(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    invoke-static {v2, v4}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setPublicVersion(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v6, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v2, v6, v3}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setSound(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v6}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->addPerson(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_c

    :cond_14
    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_19

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.car.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_15

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_15
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move v15, v8

    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v15, v11, :cond_18

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    sget-object v16, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v16

    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v16

    move-object/from16 p3, v3

    move/from16 v4, v16

    goto :goto_e

    :cond_16
    move-object/from16 p3, v3

    const/4 v4, 0x0

    :goto_e
    const-string v3, "icon"

    invoke-virtual {v8, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "title"

    iget-object v4, v5, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "actionIntent"

    iget-object v4, v5, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v3, Landroid/os/Bundle;

    iget-object v4, v5, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_17

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_f

    :cond_17
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_f
    iget-boolean v4, v5, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    invoke-virtual {v3, v12, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "extras"

    invoke-virtual {v8, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v3, 0x0

    invoke-static {v3}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/tracing/Trace;)[Landroid/os/Bundle;

    move-result-object v4

    const-string v3, "remoteInputs"

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v3, "showsUserInterface"

    iget-boolean v4, v5, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    invoke-virtual {v8, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "semanticAction"

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v14, v11, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_d

    :cond_18
    const-string v3, "invisible_actions"

    invoke-virtual {v6, v3, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_19
    iget-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-static {v2, v0}, Landroidx/core/app/NotificationCompatBuilder$Api19Impl;->setExtras(Landroid/app/Notification$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setRemoteInputHistory(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setBadgeIconType(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setSettingsText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setShortcutId(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setTimeoutAfter(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    invoke-static {v2, v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v4, v10, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_1a
    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1f

    iget-boolean v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    invoke-static {v2, v3}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setAllowSystemGeneratedContextualActions(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setBubbleMetadata(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    if-eqz v3, :cond_1b

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle$Api16Impl;->createBigTextStyle(Landroid/app/Notification$Builder;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-static {v4, v0}, Landroidx/core/app/NotificationCompat$BigTextStyle$Api16Impl;->setBigContentTitle(Landroid/app/Notification$BigTextStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    iget-object v4, v3, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-static {v0, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle$Api16Impl;->bigText(Landroid/app/Notification$BigTextStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_1b
    invoke-static {v2}, Landroidx/core/app/NotificationCompatBuilder$Api16Impl;->build(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v3, :cond_1c

    iget-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1c
    if-eqz v3, :cond_1d

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_1d

    const-string v3, "androidx.core.app.extra.COMPAT_TEMPLATE"

    const-string v4, "androidx.core.app.NotificationCompat$BigTextStyle"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1e

    const v1, 0x9b6d

    goto :goto_10

    :cond_1e
    sget-object v1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, 0x28c4

    :goto_10
    invoke-virtual {v9, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zag(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;ILcom/google/android/gms/common/api/internal/zaae;)V
    .locals 1

    const-string v0, "d"

    invoke-super {p0, p1, v0, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/common/internal/zaf;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/zaf;-><init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    invoke-static {p1, p3, v0, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p2, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p0, p2, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
