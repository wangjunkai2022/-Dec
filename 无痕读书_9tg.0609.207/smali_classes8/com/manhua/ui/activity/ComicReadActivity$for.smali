.class public Lcom/manhua/ui/activity/ComicReadActivity$for;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$for;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$for;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->this:Lcom/apk/l30;

    .line 3
    iget-object p1, p1, Lcom/apk/l30;->do:Landroid/view/GestureDetector;

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
