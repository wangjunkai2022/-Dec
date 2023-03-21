.class public Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$if;
.super Ljava/lang/Object;
.source "ForgetPasswordActivity.java"

# interfaces
.implements Lcom/apk/dt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;->new(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$if;->do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do$if;->do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->finish()V

    return-void
.end method
