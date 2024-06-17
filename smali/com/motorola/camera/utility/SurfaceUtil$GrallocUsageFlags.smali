.class public abstract enum Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

.field public static final enum DEFAULT:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;

.field public static final enum MTKG9X:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;

.field public static final enum QSM8250:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;

    invoke-direct {v0}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->DEFAULT:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;

    new-instance v1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;

    invoke-direct {v1}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;-><init>()V

    sput-object v1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->MTKG9X:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;

    new-instance v2, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;

    invoke-direct {v2}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;-><init>()V

    sput-object v2, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->QSM8250:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->$VALUES:[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->$VALUES:[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    return-object v0
.end method


# virtual methods
.method public abstract getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
.end method
