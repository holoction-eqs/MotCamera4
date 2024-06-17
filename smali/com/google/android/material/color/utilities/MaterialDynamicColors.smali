.class public abstract Lcom/google/android/material/color/utilities/MaterialDynamicColors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final background:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final controlActivated:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final controlHighlight:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final controlNormal:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final error:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final errorContainer:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onBackground:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onError:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onErrorContainer:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onPrimary:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onPrimaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onSecondary:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onSecondaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onSurface:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onSurfaceInverse:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onSurfaceVariant:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onTertiary:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final onTertiaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final outline:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final outlineVariant:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final primary:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final primaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final primaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final primaryInverse:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final secondary:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final secondaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final secondaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surface:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surfaceAdd1:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surfaceAdd2:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surfaceContainer:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surfaceInverse:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surfaceSub1:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surfaceSub2:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final surfaceVariant:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final tertiary:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final tertiaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final tertiaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final textHintInverse:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final textPrimaryInverse:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final textPrimaryInverseDisableOnly:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final textSecondaryAndTertiaryInverse:Lcom/google/android/material/color/utilities/DynamicColor;

.field public static final textSecondaryAndTertiaryInverseDisabled:Lcom/google/android/material/color/utilities/DynamicColor;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v2, 0xe

    invoke-direct {v0, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x19

    invoke-direct {v5, v6}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v7, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v5, v7, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onBackground:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v5, 0x11

    invoke-direct {v0, v5}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v8, 0x1c

    invoke-direct {v7, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v7, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surface:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v0, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v9, 0x14

    invoke-direct {v7, v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v7, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceInverse:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    invoke-direct {v0, v7}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v11, 0xc

    invoke-direct {v10, v11}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v10, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v10, 0x17

    invoke-direct {v0, v10}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v12, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v12, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v12, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v3, 0xf

    invoke-direct {v0, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v12, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v13, 0x1a

    invoke-direct {v12, v13}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v12, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceSub2:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v12, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v14, 0x1d

    invoke-direct {v12, v14}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v12, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceSub1:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v12, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v12, v7}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v12, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v12, 0x3

    invoke-direct {v0, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v6, 0x4

    invoke-direct {v15, v6}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v15, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceAdd1:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v15, 0x5

    invoke-direct {v0, v15}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v15, 0x6

    invoke-direct {v2, v15}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v2, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceAdd2:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v15, 0x8

    invoke-direct {v2, v15}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x9

    invoke-direct {v15, v6}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v2, v15, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSurface:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v2, 0xb

    invoke-direct {v15, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v2, v11}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v15, v2, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSurfaceInverse:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v15, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v15, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceVariant:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v15, 0x10

    invoke-direct {v0, v15}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v15, v5}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v3, 0x12

    invoke-direct {v5, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v15, v5, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSurfaceVariant:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v5, 0x13

    invoke-direct {v0, v5}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v15, v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v5, 0x15

    invoke-direct {v9, v5}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v15, v9, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->outline:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v9, 0x16

    invoke-direct {v0, v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v15, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v9, 0x18

    invoke-direct {v10, v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v15, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->outlineVariant:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v0, v13}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v15, 0x1b

    invoke-direct {v10, v15}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v15, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v10, v15, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v0, v14}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v10, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v15, v7}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v10, v15, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onPrimaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v0, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/4 v15, 0x4

    invoke-direct {v10, v15}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v15, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/4 v8, 0x5

    invoke-direct {v15, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/4 v12, 0x6

    invoke-direct {v8, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v10, v15, v8}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/4 v8, 0x7

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v10, 0x8

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v10, v6}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryInverse:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v8, 0xa

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v10, 0xb

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v10, v11}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onPrimary:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v10, 0xe

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v12, 0xf

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v8, 0x10

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v8, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v12, 0x13

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSecondaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v8, 0x14

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v8, v5}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v12, 0x16

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v12, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v15, 0x17

    invoke-direct {v12, v15}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v8, v10, v12}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v0, v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v10, 0x19

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v10, v13}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSecondary:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    const/16 v8, 0x1b

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v8, v14}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v10, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v0, v7}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/4 v10, 0x3

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/4 v12, 0x4

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onTertiaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/4 v8, 0x5

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/4 v10, 0x6

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/4 v12, 0x7

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v12, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v15, 0x8

    invoke-direct {v12, v15}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v8, v10, v12}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v0, v6}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v10, 0xa

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v12, 0xb

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onTertiary:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v0, v11}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v8, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v12, 0xe

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v8, 0xf

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v10, 0x10

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v12, 0x11

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onErrorContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v0, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v10, 0x13

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v10, v5}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v12, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v15, 0x16

    invoke-direct {v12, v15}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v8, v10, v12}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v8, 0x17

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v8, v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v12, 0x19

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onError:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v0, v13}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v10, 0x1b

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    const/16 v12, 0x1c

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v0, v14}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v8, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    invoke-direct {v10, v7}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/4 v8, 0x3

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/4 v10, 0x4

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/4 v12, 0x5

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/4 v8, 0x6

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/4 v10, 0x7

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v12, 0x8

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    invoke-direct {v0, v6}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v10, 0xa

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v12, 0xb

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    invoke-direct {v0, v2}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v10, 0xe

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v12, 0xf

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v8, 0x10

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v10, 0x11

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    invoke-direct {v10, v3}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v8, 0x13

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v10, 0x14

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    invoke-direct {v10, v5}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v8, 0x16

    invoke-direct {v0, v8}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    invoke-direct {v8, v9}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v12, 0x19

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    invoke-direct {v0, v13}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v10, 0x1b

    invoke-direct {v8, v10}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/16 v12, 0x1c

    invoke-direct {v10, v12}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v8, v10, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    invoke-direct {v0, v14}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v1, v7}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v8, v1, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v7, 0x4

    invoke-direct {v1, v7}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v7, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v7, 0x7

    invoke-direct {v1, v7}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->controlActivated:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->controlNormal:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0xa

    invoke-direct {v1, v6}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v7, v11}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v8, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v21, 0x0

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v10, 0xe

    invoke-direct {v2, v10}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v11, 0x10

    invoke-direct {v10, v11}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v24, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v22, v2

    move-object/from16 v23, v10

    invoke-direct/range {v16 .. v24}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->controlHighlight:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textPrimaryInverse:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textSecondaryAndTertiaryInverse:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v0, v5}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textPrimaryInverseDisableOnly:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textSecondaryAndTertiaryInverseDisabled:Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v4, v4}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textHintInverse:Lcom/google/android/material/color/utilities/DynamicColor;

    return-void
.end method

.method public static isFidelity(Lcom/google/android/material/color/utilities/SchemeContent;)Z
    .locals 1

    iget p0, p0, Lcom/google/android/material/color/utilities/SchemeContent;->variant:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/SchemeContent;)D
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v1, v1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v1, :cond_0

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ViewingConditions;->defaultWithBackgroundLstar(D)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object v1

    iget v2, v0, Lcom/google/android/material/color/utilities/Hct;->argb:I

    invoke-static {v2}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v2

    iget-wide v3, v2, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    iget-wide v10, v2, Lcom/google/android/material/color/utilities/Cam16;->j:D

    if-eqz v7, :cond_2

    cmpl-double v7, v10, v5

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    div-double v12, v10, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    div-double/2addr v3, v12

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v3, v5

    :goto_2
    iget-wide v12, v1, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    const-wide v14, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v14, v12

    const-wide v12, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v3, v12

    const-wide v12, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-wide v12, v2, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    const-wide v16, 0x400e666666666666L    # 3.8

    add-double v14, v14, v16

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    mul-double v14, v14, v16

    div-double/2addr v10, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    iget-wide v8, v1, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    div-double v7, v16, v8

    iget-wide v5, v1, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    div-double/2addr v7, v5

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v7, v1, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    mul-double/2addr v5, v7

    const-wide v7, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    mul-double/2addr v14, v7

    mul-double v14, v14, v16

    iget-wide v7, v1, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    mul-double/2addr v14, v7

    iget-wide v7, v1, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    div-double/2addr v5, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const-wide v11, 0x3fd3851eb851eb85L    # 0.305

    add-double/2addr v11, v5

    const-wide/high16 v16, 0x4037000000000000L    # 23.0

    mul-double v11, v11, v16

    mul-double/2addr v11, v3

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    mul-double v16, v16, v3

    mul-double v16, v16, v9

    add-double v16, v16, v14

    const-wide/high16 v13, 0x405b000000000000L    # 108.0

    mul-double/2addr v3, v13

    mul-double/2addr v3, v7

    add-double v3, v3, v16

    div-double/2addr v11, v3

    mul-double/2addr v9, v11

    mul-double/2addr v11, v7

    const-wide v2, 0x407cc00000000000L    # 460.0

    mul-double/2addr v5, v2

    const-wide v2, 0x407c300000000000L    # 451.0

    mul-double/2addr v2, v9

    add-double/2addr v2, v5

    const-wide/high16 v7, 0x4072000000000000L    # 288.0

    mul-double/2addr v7, v11

    add-double/2addr v7, v2

    const-wide v2, 0x4095ec0000000000L    # 1403.0

    div-double/2addr v7, v2

    const-wide v13, 0x408bd80000000000L    # 891.0

    mul-double/2addr v13, v9

    sub-double v13, v5, v13

    const-wide v15, 0x4070500000000000L    # 261.0

    mul-double/2addr v15, v11

    sub-double/2addr v13, v15

    div-double/2addr v13, v2

    const-wide v15, 0x406b800000000000L    # 220.0

    mul-double/2addr v9, v15

    sub-double/2addr v5, v9

    const-wide v9, 0x40b89c0000000000L    # 6300.0

    mul-double/2addr v11, v9

    sub-double/2addr v5, v11

    div-double/2addr v5, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    mul-double/2addr v2, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v15, 0x4079000000000000L    # 400.0

    sub-double v11, v15, v11

    div-double/2addr v2, v11

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v7, v8}, Ljava/lang/Math;->signum(D)D

    move-result-wide v7

    iget-wide v11, v1, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v11, v17, v11

    mul-double/2addr v7, v11

    const-wide v9, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v21, 0x403b2147ae147ae1L    # 27.13

    mul-double v7, v7, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    sub-double v23, v15, v23

    div-double v7, v7, v23

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {v13, v14}, Ljava/lang/Math;->signum(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    const-wide v9, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    mul-double v13, v13, v21

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    sub-double v15, v15, v21

    div-double/2addr v13, v15

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    const-wide v11, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v9, v4

    iget-object v1, v1, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    const/4 v4, 0x0

    aget-wide v5, v1, v4

    div-double/2addr v2, v5

    const/4 v5, 0x1

    aget-wide v11, v1, v5

    div-double/2addr v7, v11

    const/4 v6, 0x2

    aget-wide v11, v1, v6

    div-double/2addr v9, v11

    sget-object v1, Lcom/google/android/material/color/utilities/Cam16;->CAM16RGB_TO_XYZ:[[D

    aget-object v11, v1, v4

    aget-wide v12, v11, v4

    mul-double/2addr v12, v2

    aget-wide v14, v11, v5

    mul-double/2addr v14, v7

    add-double/2addr v14, v12

    aget-wide v11, v11, v6

    mul-double/2addr v11, v9

    add-double v19, v11, v14

    aget-object v11, v1, v5

    aget-wide v12, v11, v4

    mul-double/2addr v12, v2

    aget-wide v14, v11, v5

    mul-double/2addr v14, v7

    add-double/2addr v14, v12

    aget-wide v11, v11, v6

    mul-double/2addr v11, v9

    add-double v21, v11, v14

    aget-object v1, v1, v6

    aget-wide v11, v1, v4

    mul-double/2addr v2, v11

    aget-wide v11, v1, v5

    mul-double/2addr v7, v11

    add-double/2addr v7, v2

    aget-wide v1, v1, v6

    mul-double/2addr v9, v1

    add-double v23, v9, v7

    const/4 v1, 0x3

    new-array v1, v1, [D

    aput-wide v19, v1, v4

    aput-wide v21, v1, v5

    aput-wide v23, v1, v6

    sget-object v25, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    invoke-static/range {v19 .. v25}, Lcom/google/android/material/color/utilities/Cam16;->fromXyzInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v2

    iget-wide v6, v2, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    iget-wide v8, v2, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    aget-wide v1, v1, v5

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v10

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v1

    const-wide/high16 v10, 0x405d000000000000L    # 116.0

    mul-double/2addr v1, v10

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    sub-double v10, v1, v10

    invoke-static/range {v6 .. v11}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v6, 0x3c

    cmp-long v2, v2, v6

    if-gtz v2, :cond_3

    move v2, v5

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    if-eqz v2, :cond_5

    iget-wide v2, v1, Lcom/google/android/material/color/utilities/Hct;->tone:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v6, 0x31

    cmp-long v2, v2, v6

    if-gtz v2, :cond_4

    move v4, v5

    :cond_4
    if-nez v4, :cond_5

    iget-wide v0, v0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    :goto_4
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->enableLightForeground(D)D

    move-result-wide v0

    return-wide v0

    :cond_5
    iget-wide v0, v1, Lcom/google/android/material/color/utilities/Hct;->tone:D

    goto :goto_4
.end method
