.class public final Landroidx/work/impl/foreground/SystemForegroundService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/work/impl/foreground/SystemForegroundService;

.field public final synthetic val$notification:Landroid/app/Notification;

.field public final synthetic val$notificationId:I

.field public final synthetic val$notificationType:I


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundService$1;->this$0:Landroidx/work/impl/foreground/SystemForegroundService;

    iput p2, p0, Landroidx/work/impl/foreground/SystemForegroundService$1;->val$notificationId:I

    iput-object p3, p0, Landroidx/work/impl/foreground/SystemForegroundService$1;->val$notification:Landroid/app/Notification;

    iput p4, p0, Landroidx/work/impl/foreground/SystemForegroundService$1;->val$notificationType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService$1;->val$notification:Landroid/app/Notification;

    iget v1, p0, Landroidx/work/impl/foreground/SystemForegroundService$1;->val$notificationType:I

    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundService$1;->this$0:Landroidx/work/impl/foreground/SystemForegroundService;

    iget p0, p0, Landroidx/work/impl/foreground/SystemForegroundService$1;->val$notificationId:I

    invoke-static {v2, p0, v0, v1}, Landroidx/work/impl/foreground/SystemForegroundService$Api31Impl;->startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void
.end method
