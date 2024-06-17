.class public final Lkotlinx/serialization/internal/ElementMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_HIGH_MARKS:[J


# instance fields
.field public final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final highMarksArray:[J

.field public lowerMarks:J

.field public final readIfAbsent:Lkotlin/jvm/functions/Function2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lkotlinx/serialization/internal/ElementMarker;->EMPTY_HIGH_MARKS:[J

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/JsonElementMarker$origin$1;)V
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ElementMarker;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    iput-object p2, p0, Lkotlinx/serialization/internal/ElementMarker;->readIfAbsent:Lkotlin/jvm/functions/Function2;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/16 p2, 0x40

    if-gt p1, p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    shl-long v2, v0, p1

    :goto_0
    iput-wide v2, p0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    sget-object p1, Lkotlinx/serialization/internal/ElementMarker;->EMPTY_HIGH_MARKS:[J

    iput-object p1, p0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    goto :goto_1

    :cond_1
    iput-wide v2, p0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    add-int/lit8 p2, p1, -0x1

    ushr-int/lit8 p2, p2, 0x6

    and-int/lit8 v2, p1, 0x3f

    new-array v3, p2, [J

    if-eqz v2, :cond_2

    add-int/lit8 p2, p2, -0x1

    shl-long/2addr v0, p1

    aput-wide v0, v3, p2

    :cond_2
    iput-object v3, p0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    :goto_1
    return-void
.end method
