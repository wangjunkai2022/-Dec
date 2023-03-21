.class public Lcom/apk/h2$case;
.super Ljava/lang/Object;
.source "BookReadPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h2;


# direct methods
.method public constructor <init>(Lcom/apk/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h2$case;->do:Lcom/apk/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090315

    if-ne p1, v0, :cond_0

    const p1, 0x7f1000c0

    .line 2
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/h2$case;->do:Lcom/apk/h2;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lcom/apk/h2;->goto:I

    .line 5
    invoke-virtual {p1}, Lcom/apk/h2;->catch()V

    .line 6
    iget-object p1, p0, Lcom/apk/h2$case;->do:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->w()V

    :cond_0
    return-void
.end method
