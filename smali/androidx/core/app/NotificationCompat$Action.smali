.class public final Landroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final actionIntent:Landroid/app/PendingIntent;

.field public final icon:I

.field public final mAllowGeneratedReplies:Z

.field public final mExtras:Landroid/os/Bundle;

.field public mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public final mShowsUserInterface:Z

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5

    const v0, 0x7f0800ef

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-static {v3}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getType(Ljava/lang/Object;)I

    move-result v3

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    :cond_1
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    iput-boolean v2, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    iput-boolean v2, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    return-void
.end method


# virtual methods
.method public final getIconCompat()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method
