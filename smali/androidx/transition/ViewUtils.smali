.class public abstract Landroidx/transition/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/transition/ViewUtilsApi29;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi29;-><init>()V

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Float;

    const-string v3, "translationAlpha"

    invoke-direct {v0, v1, v2, v3}, Landroidx/transition/ViewUtils$1;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const/4 v1, 0x7

    const-class v2, Landroid/graphics/Rect;

    const-string v3, "clipBounds"

    invoke-direct {v0, v1, v2, v3}, Landroidx/transition/ViewUtils$1;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
