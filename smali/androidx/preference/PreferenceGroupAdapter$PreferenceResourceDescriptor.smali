.class public final Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mClassName:Ljava/lang/String;

.field public final mLayoutResId:I

.field public final mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mClassName:Ljava/lang/String;

    iget v0, p1, Landroidx/preference/Preference;->mLayoutResId:I

    iput v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    iget p1, p1, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    iput p1, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    iget v0, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    iget v2, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    iget v2, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mClassName:Ljava/lang/String;

    iget-object p1, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mClassName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mClassName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
