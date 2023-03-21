.class public Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do$do;
.super Ljava/lang/Object;
.source "SwitchNightRelativeLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do$do;->do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do$do;->do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;

    iget-object p1, p1, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;->do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->if(Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
