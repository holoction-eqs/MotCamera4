.class public final enum Lcom/motorola/camera/analytics/AnalyticsService$EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/analytics/AnalyticsService$EventType;

.field public static final enum CAMERA_READY:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

.field public static final enum CAMERA_SWITCHED:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

.field public static final enum OBJECT_DETECTION:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

.field public static final enum POST_CAPTURE:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

.field public static final enum POST_DOC_EDIT:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

.field public static final enum SHOT_TO_SHOT:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

.field public static final enum USER_EXITED_APP:Lcom/motorola/camera/analytics/AnalyticsService$EventType;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    const-string v1, "CAMERA_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/AnalyticsService$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->CAMERA_READY:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    const-string v2, "CAMERA_SWITCHED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/analytics/AnalyticsService$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->CAMERA_SWITCHED:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    new-instance v2, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    const-string v3, "SHOT_TO_SHOT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/analytics/AnalyticsService$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->SHOT_TO_SHOT:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    new-instance v3, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    const-string v4, "POST_CAPTURE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/analytics/AnalyticsService$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->POST_CAPTURE:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    new-instance v4, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    const-string v5, "USER_EXITED_APP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/analytics/AnalyticsService$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->USER_EXITED_APP:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    new-instance v5, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    const-string v6, "OBJECT_DETECTION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/analytics/AnalyticsService$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->OBJECT_DETECTION:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    new-instance v6, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    const-string v7, "WIDGET_TAP"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/analytics/AnalyticsService$EventType;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    const-string v8, "POST_DOC_EDIT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/analytics/AnalyticsService$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->POST_DOC_EDIT:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    filled-new-array/range {v0 .. v7}, [Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->$VALUES:[Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/analytics/AnalyticsService$EventType;
    .locals 1

    const-class v0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/analytics/AnalyticsService$EventType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->$VALUES:[Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    invoke-virtual {v0}, [Lcom/motorola/camera/analytics/AnalyticsService$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    return-object v0
.end method
