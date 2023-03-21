.class public Lcom/apk/i20$do;
.super Ljava/lang/Object;
.source "ComicReadMenuView.java"

# interfaces
.implements Lcom/apk/o0$else;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/i20;->do(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/i20;


# direct methods
.method public constructor <init>(Lcom/apk/i20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/i20$do;->do:Lcom/apk/i20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/apk/i20$do;->do:Lcom/apk/i20;

    iget-boolean v0, p1, Lcom/apk/i20;->do:Z

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p1, Lcom/apk/i20;->if:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/apk/mu;->case(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/i20$do;->do:Lcom/apk/i20;

    iget-object p1, p1, Lcom/apk/i20;->if:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 6
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    .line 7
    invoke-virtual {p1}, Lcom/apk/f00;->i()V

    :cond_1
    return-void
.end method
