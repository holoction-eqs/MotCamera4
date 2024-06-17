.class public final Lcom/motorola/camera/analytics/AlwaysAwareEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final ACTION:Landroidx/core/text/BidiFormatter$Builder;

.field public static final GEO_AVAILABLE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public static final NETWORK_SUBTYPE:Landroidx/core/text/BidiFormatter$Builder;

.field public static final NETWORK_TYPE:Landroidx/core/text/BidiFormatter$Builder;

.field public static final NUM_FIELDS:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final OBJECT_TYPE:Landroidx/core/text/BidiFormatter$Builder;

.field public static final SCAN_DURATION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final TIME_AT_DETECTION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "SCNTME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->SCAN_DURATION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "TYPE"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->OBJECT_TYPE:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "ACTION"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->ACTION:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "FLDS"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NUM_FIELDS:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "EVTTME"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->TIME_AT_DETECTION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "NETTYPE"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_TYPE:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "NETSUB"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_SUBTYPE:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v1, "GEO"

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->GEO_AVAILABLE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    return-void
.end method


# virtual methods
.method public final addData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2

    check-cast p3, Lcom/motorola/camera/analytics/AlwaysAwareData;

    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->SCAN_DURATION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->OBJECT_TYPE:Landroidx/core/text/BidiFormatter$Builder;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->ACTION:Landroidx/core/text/BidiFormatter$Builder;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NUM_FIELDS:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->TIME_AT_DETECTION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_TYPE:Landroidx/core/text/BidiFormatter$Builder;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_SUBTYPE:Landroidx/core/text/BidiFormatter$Builder;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->GEO_AVAILABLE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-boolean p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final getEventType()Lcom/motorola/camera/analytics/AnalyticsService$EventType;
    .locals 0

    sget-object p0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->OBJECT_DETECTION:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    return-object p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.6"

    return-object p0
.end method
