.class public final Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBigContentView:[Ljava/lang/String;

.field public final mBuilder:Ljava/lang/Object;

.field public final mBuilderCompat:Ljava/lang/Object;

.field public final mContentView:[Ljava/lang/String;

.field public final mContext:Ljava/lang/Object;

.field public final mExtras:Ljava/lang/Cloneable;

.field public final mGroupAlertBehavior:I

.field public final mHeadsUpContentView:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)V
    .locals 0

    const-string p8, "kind"

    invoke-static {p1, p8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/core/app/NotificationCompatBuilder;->mContentView:[Ljava/lang/String;

    iput-object p5, p0, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:[Ljava/lang/String;

    iput-object p6, p0, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Ljava/lang/String;

    iput p7, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    iput-object p9, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Cloneable;

    return-void
.end method


# virtual methods
.method public final getMultifileClassName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
