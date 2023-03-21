.class public Lcom/apk/s0$do;
.super Ljava/lang/Object;
.source "ReadTimerHelper.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/VideoRewardDialog$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/s0;->this(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/apk/s0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/s0$do;->do:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/s0$do;->do:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->p(Landroid/content/Context;I)V

    return-void
.end method
