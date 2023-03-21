.class public final Lcom/apk/ow$do;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ow;->for(Landroid/view/Window;Lcom/lxj/xpopup/core/BasePopupView;Lcom/apk/ow$if;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ow$do;->do:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ow$do;->do:Landroid/view/Window;

    .line 2
    invoke-static {v0}, Lcom/apk/ow;->do(Landroid/view/Window;)I

    move-result v0

    .line 3
    sget v1, Lcom/apk/ow;->do:I

    if-eq v1, v0, :cond_1

    .line 4
    sget-object v1, Lcom/apk/ow;->for:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/ow$if;

    .line 6
    invoke-interface {v2, v0}, Lcom/apk/ow$if;->do(I)V

    goto :goto_0

    .line 7
    :cond_0
    sput v0, Lcom/apk/ow;->do:I

    :cond_1
    return-void
.end method
