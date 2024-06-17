.class public final Lcom/motorola/camera/analytics/PostDocEditEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final ADJUSTED_EDGES:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public static final FILTER:Landroidx/core/text/BidiFormatter$Builder;

.field public static final ROTATED:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v1, "EDGES"

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostDocEditEvent;->ADJUSTED_EDGES:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostDocEditEvent;->ROTATED:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "FILTER"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostDocEditEvent;->FILTER:Landroidx/core/text/BidiFormatter$Builder;

    return-void
.end method


# virtual methods
.method public final addData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 1

    const-string p0, "ANALYTICS_DOC_EDITOR_FILTER"

    invoke-virtual {p1, p0}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    sget-object p3, Lcom/motorola/camera/analytics/PostDocEditEvent;->ADJUSTED_EDGES:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v0, "ANALYTICS_DOC_EDITOR_EDGES"

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/camera/analytics/PostDocEditEvent;->ROTATED:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v0, "ANALYTICS_DOC_EDITOR_ROTATE"

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/camera/analytics/PostDocEditEvent;->FILTER:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {p1, p0}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final getEventType()Lcom/motorola/camera/analytics/AnalyticsService$EventType;
    .locals 0

    sget-object p0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->POST_DOC_EDIT:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    return-object p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method
