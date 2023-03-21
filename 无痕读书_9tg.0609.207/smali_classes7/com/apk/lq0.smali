.class public Lcom/apk/lq0;
.super Ljava/lang/Object;
.source "SkinCompatResources.java"


# static fields
.field public static volatile else:Lcom/apk/lq0;


# instance fields
.field public case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/qq0;",
            ">;"
        }
    .end annotation
.end field

.field public do:Landroid/content/res/Resources;

.field public for:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public new:Lcom/apk/yp0$for;

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/apk/lq0;->if:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/apk/lq0;->for:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/apk/lq0;->try:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/lq0;->case:Ljava/util/List;

    return-void
.end method

.method public static case(Landroid/content/Context;ILandroid/util/TypedValue;Z)V
    .locals 2
    .param p1    # I
        .annotation build Lskin/support/annotation/AnyRes;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lcom/apk/lq0;->try:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/apk/lq0;->try(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, v0, Lcom/apk/lq0;->do:Landroid/content/res/Resources;

    invoke-virtual {p0, v1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    :goto_0
    return-void
.end method

.method public static do(Landroid/content/Context;I)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v1, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 3
    iget-boolean v2, v1, Lcom/apk/nq0;->new:Z

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/apk/nq0;->if(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/apk/lq0;->new:Lcom/apk/yp0$for;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, v0, Lcom/apk/lq0;->for:Ljava/lang/String;

    invoke-interface {v1, p0, v2, p1}, Lcom/apk/yp0$for;->do(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean v1, v0, Lcom/apk/lq0;->try:Z

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/apk/lq0;->try(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object p0, v0, Lcom/apk/lq0;->do:Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_0

    .line 12
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_0
    return p0

    :cond_4
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static for(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v1, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 3
    iget-boolean v2, v1, Lcom/apk/nq0;->new:Z

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/apk/nq0;->if(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    .line 6
    :cond_0
    sget-object v1, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 7
    iget-boolean v2, v1, Lcom/apk/nq0;->goto:Z

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v1, p1}, Lcom/apk/nq0;->for(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    move-object p0, v1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/apk/lq0;->new:Lcom/apk/yp0$for;

    if-eqz v1, :cond_2

    .line 10
    iget-object v2, v0, Lcom/apk/lq0;->for:Ljava/lang/String;

    invoke-interface {v1, p0, v2, p1}, Lcom/apk/yp0$for;->if(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v1, v0, Lcom/apk/lq0;->try:Z

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/apk/lq0;->try(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object p0, v0, Lcom/apk/lq0;->do:Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v1, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 3
    iget-boolean v2, v1, Lcom/apk/nq0;->new:Z

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/apk/nq0;->if(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/apk/lq0;->new:Lcom/apk/yp0$for;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v0, Lcom/apk/lq0;->for:Ljava/lang/String;

    invoke-interface {v1, p0, v2, p1}, Lcom/apk/yp0$for;->for(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v1, v0, Lcom/apk/lq0;->try:Z

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0, p0, p1}, Lcom/apk/lq0;->try(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object p0, v0, Lcom/apk/lq0;->do:Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_4
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public static new()Lcom/apk/lq0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/lq0;->else:Lcom/apk/lq0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/lq0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/lq0;->else:Lcom/apk/lq0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/lq0;

    invoke-direct {v1}, Lcom/apk/lq0;-><init>()V

    sput-object v1, Lcom/apk/lq0;->else:Lcom/apk/lq0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/lq0;->else:Lcom/apk/lq0;

    return-object v0
.end method


# virtual methods
.method public else(Lcom/apk/yp0$for;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 2
    invoke-virtual {v0}, Lcom/apk/yp0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/lq0;->do:Landroid/content/res/Resources;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/apk/lq0;->if:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/apk/lq0;->for:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/apk/lq0;->new:Lcom/apk/yp0$for;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/apk/lq0;->try:Z

    .line 7
    sget-object p1, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 8
    invoke-virtual {p1}, Lcom/apk/nq0;->do()V

    .line 9
    iget-object p1, p0, Lcom/apk/lq0;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/qq0;

    .line 10
    invoke-interface {v0}, Lcom/apk/qq0;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public goto(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/apk/yp0$for;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/apk/lq0;->do:Landroid/content/res/Resources;

    .line 3
    iput-object p2, p0, Lcom/apk/lq0;->if:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/apk/lq0;->for:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/apk/lq0;->new:Lcom/apk/yp0$for;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/apk/lq0;->try:Z

    .line 7
    sget-object p1, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 8
    invoke-virtual {p1}, Lcom/apk/nq0;->do()V

    .line 9
    iget-object p1, p0, Lcom/apk/lq0;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apk/qq0;

    .line 10
    invoke-interface {p2}, Lcom/apk/qq0;->clear()V

    goto :goto_0

    :cond_1
    return-void

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0, p4}, Lcom/apk/lq0;->else(Lcom/apk/yp0$for;)V

    return-void
.end method

.method public try(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/apk/lq0;->new:Lcom/apk/yp0$for;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/lq0;->new:Lcom/apk/yp0$for;

    iget-object v1, p0, Lcom/apk/lq0;->for:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/apk/yp0$for;->try(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/apk/lq0;->do:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/apk/lq0;->if:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
