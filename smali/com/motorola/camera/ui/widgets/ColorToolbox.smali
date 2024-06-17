.class public final Lcom/motorola/camera/ui/widgets/ColorToolbox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final buttonActiveColor:I

.field public final buttonBackground:I

.field public final buttonBackgroundLight:I

.field public final navBarBackground:I

.field public final onPrimary:I

.field public final primaryLight:I

.field public final primaryMain:I

.field public final primaryShadow:I

.field public final sliderShadow:I

.field public final surfaceDark:I

.field public final surfaceLight:I

.field public final surfaceMain:I

.field public final surfaceMedium:I

.field public final tooltipBackground:I

.field public final windowBackground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f060379

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    const v0, 0x7f060375

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    const v0, 0x7f060378

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryLight:I

    const v0, 0x7f06037e

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryShadow:I

    const v0, 0x7f060359

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->navBarBackground:I

    const v0, 0x7f0603dd

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->tooltipBackground:I

    const v0, 0x7f060050

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonActiveColor:I

    const v0, 0x7f0603ca

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    const v0, 0x7f0603c4

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    const v0, 0x7f0603c8

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceLight:I

    const v0, 0x7f06036c

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMedium:I

    const v0, 0x7f0603be

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->sliderShadow:I

    const v0, 0x7f06040b

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->windowBackground:I

    const v0, 0x7f040111

    const/high16 v1, -0x1000000

    invoke-static {p1, v0, v1}, Ljms/IJobMgrService$_Parcel;->getColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    const v0, 0x7f060051

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonBackground:I

    const v0, 0x7f060052

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonBackgroundLight:I

    return-void
.end method
