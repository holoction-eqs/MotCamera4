.class public Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoFusionParams"
.end annotation


# instance fields
.field public bg_light_factor:F

.field public blue:F

.field public blurIntensity:F

.field public bokeh_max_radius_factor:F

.field public facula_density:F

.field public green:F

.field public light_factor:F

.field public max_light_threshold:F

.field public min_light_threshold:F

.field public red:F

.field public saturation:F

.field public smooth_amount:F

.field public yellow:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    iput p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    iput p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    iput p6, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    return-void
.end method


# virtual methods
.method public UpdateBgLightFactor(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    return-object p0
.end method

.method public UpdateBlurIntensity(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    return-object p0
.end method

.method public UpdateBokehMaxRadiusFactor(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    return-object p0
.end method

.method public UpdateColorValue(FFFF)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->red:F

    iput p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->green:F

    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blue:F

    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->yellow:F

    return-object p0
.end method

.method public UpdateFaculaDensity(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->facula_density:F

    return-object p0
.end method

.method public UpdateLightFactor(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    return-object p0
.end method

.method public UpdateMaxLightThreshold(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    return-object p0
.end method

.method public UpdateMinLightThreshold(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    return-object p0
.end method

.method public UpdateSaturation(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->saturation:F

    return-object p0
.end method

.method public UpdateSmoothAmount(F)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;
    .locals 0

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->smooth_amount:F

    return-object p0
.end method
