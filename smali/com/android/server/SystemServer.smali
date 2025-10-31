.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "qb/102648656 e1ef15caafe0ee5b3507e8c14428ab77340532192772a82f187f1456268a75d7"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final HEAP_DUMP_PATH:Ljava/io/File;

.field public static sPendingWtfs:Ljava/util/LinkedList;


# instance fields
.field public enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

.field public knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field public mDualAppService:Lcom/android/server/DualAppManagerService;

.field public final mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

.field public final mFactoryTestMode:I

.field public mFirstBoot:Z

.field public mIncrementalServiceHandle:J

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field public final mRuntimeRestart:Z

.field public final mRuntimeStartElapsedTime:J

.field public final mRuntimeStartUptime:J

.field public final mStartCount:I

.field public mSystemContext:Landroid/content/Context;

.field public mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field public mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field public mZygotePreload:Ljava/util/concurrent/Future;

.field public sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public static synthetic $r8$lambda$0ek3wX68xKbgZMUwZfiBRkUNTFs()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "StartHidlServices"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static $r8$lambda$2PdG6KuU0ZTvilD515PGrttj0sk(III)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    move v3, v0

    .line 5
    :catch_0
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-le v4, p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    :cond_0
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x2

    .line 23
    const/16 v7, 0x16c

    .line 24
    .line 25
    const-string/jumbo v8, "System"

    .line 26
    .line 27
    .line 28
    if-le v4, p0, :cond_1

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    const-string/jumbo v3, "fdtrack enable threshold reached, enabling"

    .line 33
    .line 34
    .line 35
    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-static {v7, v6, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v3, "fdtrack"

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move v3, v5

    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    if-le v4, p1, :cond_7

    .line 51
    .line 52
    const-string/jumbo v5, "fdtrack abort threshold reached, dumping and aborting"

    .line 53
    .line 54
    .line 55
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const/4 v5, 0x3

    .line 59
    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/util/TreeSet;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v5, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    array-length v7, v5

    .line 74
    move v9, v0

    .line 75
    :goto_1
    if-ge v9, v7, :cond_4

    .line 76
    .line 77
    aget-object v10, v5, v9

    .line 78
    .line 79
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-nez v11, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    const-string/jumbo v12, "fdtrack-"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-nez v11, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v4, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-lt v5, v6, :cond_6

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_6

    .line 124
    .line 125
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Ljava/io/File;

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-nez v6, :cond_5

    .line 136
    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v7, "Failed to clean up hprof "

    .line 140
    .line 141
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 156
    .line 157
    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    .line 158
    .line 159
    .line 160
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v5, Ljava/util/Date;

    .line 164
    .line 165
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v6, "/data/system/heapdump/fdtrack-"

    .line 178
    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v4, ".hprof"

    .line 186
    .line 187
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :catch_1
    move-exception v4

    .line 199
    const-string v5, "Failed to dump fdtrack hprof"

    .line 200
    .line 201
    invoke-static {v8, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .line 203
    .line 204
    :goto_4
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    cmp-long v10, v8, v1

    .line 213
    .line 214
    if-lez v10, :cond_9

    .line 215
    .line 216
    const-wide/32 v1, 0x36ee80

    .line 217
    .line 218
    .line 219
    add-long/2addr v8, v1

    .line 220
    if-eqz v3, :cond_8

    .line 221
    .line 222
    move v5, v6

    .line 223
    :cond_8
    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 224
    .line 225
    .line 226
    move-wide v1, v8

    .line 227
    :cond_9
    :goto_5
    mul-int/lit16 v4, p2, 0x3e8

    .line 228
    .line 229
    int-to-long v4, v4

    .line 230
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0
.end method

.method public static synthetic $r8$lambda$CJLFlg8wnqihjN12r-2Qq_1qSd8()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "StartISensorManagerService"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static $r8$lambda$gEmTR7CVQ-l_CmmRBoxkZ9OyUbo(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/SemTelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p12

    const-string v14, "HsumBootUserInitializer"

    const-string/jumbo v15, "device_provisioned"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string/jumbo v0, "Making services ready"

    const-string/jumbo v13, "SystemServer"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    const-string/jumbo v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3
    const-string v0, "!@Boot_EBS_D: PHASE_ACTIVITY_MANAGER_READY"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0x226

    invoke-virtual {v0, v2, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 5
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6
    const-string/jumbo v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v12, Lcom/android/server/am/NativeCrashListener;

    invoke-direct {v12, v0}, Lcom/android/server/am/NativeCrashListener;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 9
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    const-string/jumbo v12, "observing native crashes"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 12
    const-string/jumbo v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 13
    :try_start_1
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v12, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v11}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 15
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v11, :cond_0

    .line 16
    iget-object v11, v11, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    .line 17
    :goto_1
    new-instance v10, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v10, v0, v12, v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v10, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 18
    const-string/jumbo v10, "registering app ops policy"

    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 20
    iget-object v0, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string/jumbo v10, "WebViewFactoryPreparation"

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    :goto_3
    if-eqz p2, :cond_6

    .line 22
    const-string/jumbo v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 23
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v12, "com.android.internal.car.CarServiceHelperService"

    .line 24
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 25
    instance-of v12, v0, Landroid/util/Dumpable;

    if-eqz v12, :cond_2

    .line 26
    iget-object v12, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v9, v0

    check-cast v9, Landroid/util/Dumpable;

    invoke-static {v12, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 27
    :cond_2
    instance-of v9, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v9, :cond_5

    .line 28
    check-cast v0, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v9, p3

    .line 29
    iget-object v9, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v12, 0x0

    .line 30
    invoke-virtual {v9, v12, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCallerIdentity(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/devicepolicy/CallerIdentity;

    move-result-object v18

    .line 31
    iget-boolean v12, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsAutomotive:Z

    if-nez v12, :cond_4

    invoke-static/range {v18 .. v18}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdb(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v12, 0x1

    :goto_5
    const-string/jumbo v8, "can only set DevicePolicySafetyChecker on automotive builds or from ADB (but caller is %s)"

    move-object/from16 v19, v14

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v8, v14}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v9, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDevicePolicySafetyCheckerUnchecked(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_6

    :cond_5
    move-object/from16 v19, v14

    .line 33
    :goto_6
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_7

    :cond_6
    move-object/from16 v19, v14

    :goto_7
    if-eqz p4, :cond_9

    .line 34
    const-string/jumbo v0, "StartWearService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const v0, 0x10403f1

    .line 35
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 37
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 38
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 39
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0x100

    .line 40
    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_8

    .line 42
    :cond_7
    const-string/jumbo v0, "Null wear service component name."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_8
    :goto_8
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 44
    :cond_9
    const-string/jumbo v0, "startThemeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 45
    :try_start_2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 46
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 47
    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v12, "com.samsung.android.themecenter"

    const-string/jumbo v14, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v9, v12, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v9, "safeMode"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    const-string/jumbo v9, "isStartedBySystemServer"

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    .line 51
    const-string/jumbo v8, "starting Theme Service"

    invoke-static {v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_9
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v4, :cond_a

    .line 53
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v12, 0x1

    .line 54
    :try_start_3
    invoke-virtual {v5, v12}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 55
    const-string/jumbo v4, "enabling Airplane Mode during Safe Mode bootup"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :goto_a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 57
    :cond_a
    const-string/jumbo v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p8, :cond_c

    .line 58
    :try_start_4
    const-string v0, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "!@Boot_EBS_D: start networkManagement"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_b

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 62
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v8, v20, v8

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Prepared in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "NetworkManagement"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 65
    :cond_b
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    .line 66
    :goto_b
    const-string v0, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "!@Boot_EBS_D: end networkManagement"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    .line 68
    const-string/jumbo v4, "making Network Managment Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    if-eqz v6, :cond_d

    const/4 v12, 0x1

    .line 69
    iput-boolean v12, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 70
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 71
    iget-object v4, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v8, v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v4, v0

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    .line 72
    :goto_d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 73
    const-string/jumbo v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v5, :cond_e

    .line 74
    :try_start_5
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    .line 75
    const-string/jumbo v5, "making Connectivity Service ready"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_e
    :goto_e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 77
    const-string/jumbo v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p10, :cond_f

    .line 78
    :try_start_6
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_f

    :catchall_6
    move-exception v0

    .line 79
    const-string/jumbo v5, "making VpnManagerService ready"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_f
    :goto_f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 81
    const-string/jumbo v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v6, :cond_10

    .line 82
    :try_start_7
    invoke-virtual {v6, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    .line 83
    const-string/jumbo v4, "making Network Policy Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :cond_10
    :goto_10
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 85
    const-string/jumbo v0, "MakeUrspServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p11, :cond_11

    .line 86
    :try_start_8
    const-string/jumbo v0, "UrspService"

    const-string/jumbo v4, "systemReady()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v0

    .line 87
    const-string/jumbo v4, "making ursp Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :cond_11
    :goto_11
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 89
    const-string/jumbo v0, "WaitForAppDataPrepared"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 90
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 91
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 92
    const-string/jumbo v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v11, :cond_12

    .line 93
    invoke-static {v11, v10}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    :cond_12
    const-string v0, "!@Boot_EBS_D: PHASE_THIRD_PARTY_APPS_CAN_START"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x258

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 96
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v7, :cond_16

    .line 97
    const-string v0, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 98
    iget-object v4, v7, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "switchToBootUser-"

    .line 99
    :try_start_9
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v12, 0x1

    move-object/from16 v8, v19

    if-ne v0, v12, :cond_13

    const/4 v10, 0x0

    goto :goto_12

    :catch_0
    move-exception v0

    .line 100
    const-string v6, "DEVICE_PROVISIONED setting not found."

    move-object/from16 v8, v19

    invoke-static {v8, v6, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_13
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, v7, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

    const/4 v10, 0x0

    .line 103
    invoke-virtual {v0, v6, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    :goto_12
    const-string/jumbo v0, "Unlocking system user"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo v0, "unlock-system-user"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 106
    :try_start_a
    const-string/jumbo v0, "am.startUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 107
    invoke-virtual {v4, v10, v12}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 108
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_14

    .line 109
    const-string/jumbo v0, "could not restart system user in background; trying unlock instead"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo v0, "am.unlockUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 111
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 112
    invoke-virtual {v0, v10, v12}, Lcom/android/server/am/UserController;->unlockUser(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 113
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_14

    .line 114
    const-string/jumbo v0, "could not unlock system user either"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception v0

    goto :goto_15

    .line 115
    :cond_14
    :goto_13
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 116
    :try_start_b
    const-string/jumbo v0, "getBootUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 117
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    iget-object v6, v7, Lcom/android/server/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v7, "android.hardware.type.automotive"

    const/4 v10, 0x0

    .line 118
    invoke-virtual {v6, v7, v10}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    .line 119
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerInternal;->getBootUser(Z)I

    move-result v0

    .line 120
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "Switching to boot user %d"

    invoke-static {v8, v6, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x0

    .line 123
    invoke-virtual {v4, v0, v12}, Lcom/android/server/am/ActivityManagerService;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "Failed to start user %d in foreground"

    invoke-static {v8, v4, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_15
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_b
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_14

    .line 126
    :catch_1
    const-string v0, "Failed to switch to boot user since there isn\'t one."

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_14
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_16

    .line 128
    :goto_15
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 129
    throw v0

    .line 130
    :cond_16
    :goto_16
    const-string/jumbo v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 131
    :try_start_c
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_17

    :catchall_a
    move-exception v0

    .line 132
    const-string/jumbo v4, "starting Network Stack"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_17
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 134
    const-string/jumbo v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 135
    :try_start_d
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string/jumbo v4, "android.net.ITetheringConnector"

    const-string/jumbo v5, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_18

    :catchall_b
    move-exception v0

    .line 136
    const-string/jumbo v4, "starting Tethering"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    :goto_18
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 138
    const-string/jumbo v0, "SLocationServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p13, :cond_17

    .line 139
    :try_start_e
    const-string/jumbo v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 140
    const-string/jumbo v4, "systemReady"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v6, v5, v17

    const-class v6, Landroid/os/IBinder;

    const/16 v16, 0x1

    aput-object v6, v5, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object/from16 v8, p13

    .line 141
    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    goto :goto_19

    :catchall_c
    move-exception v0

    .line 142
    const-string/jumbo v4, "making SLocation Service ready : "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :cond_17
    :goto_19
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 144
    const-string/jumbo v0, "SAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p14, :cond_19

    move-object/from16 v9, p14

    .line 145
    :try_start_f
    iget-object v0, v9, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    goto :goto_1b

    .line 146
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 147
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->systemReady()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_1a

    :catch_2
    move-exception v0

    .line 148
    const-string/jumbo v4, "Notifying SAccessoryManager running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_19
    :goto_1b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 150
    const-string/jumbo v0, "MoccaReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p15, :cond_1a

    move-object/from16 v10, p15

    .line 151
    :try_start_10
    invoke-static {v3, v10}, Lcom/android/server/sensors/mocca/MoccaLoader;->systemReady(Landroid/content/Context;Landroid/os/IBinder;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    goto :goto_1c

    :catchall_d
    move-exception v0

    .line 152
    const-string/jumbo v4, "making Mocca Service ready : "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    :cond_1a
    :goto_1c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 154
    const-string/jumbo v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p16, :cond_1b

    move-object/from16 v11, p16

    .line 155
    :try_start_11
    iget-object v0, v11, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v11}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/CountryDetectorService;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    goto :goto_1d

    :catchall_e
    move-exception v0

    .line 156
    const-string/jumbo v4, "Notifying CountryDetectorService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_1b
    :goto_1d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 158
    const-string/jumbo v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p17, :cond_1c

    .line 159
    :try_start_12
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    goto :goto_1e

    :catchall_f
    move-exception v0

    .line 160
    const-string/jumbo v4, "Notifying NetworkTimeService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :cond_1c
    :goto_1e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 162
    const-string/jumbo v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 163
    :try_start_13
    invoke-virtual/range {p18 .. p18}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    goto :goto_1f

    :catchall_10
    move-exception v0

    .line 164
    const-string/jumbo v4, "Notifying TelephonyRegistry running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :goto_1f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 166
    const-string/jumbo v0, "MakeSemTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 167
    :try_start_14
    invoke-virtual/range {p19 .. p19}, Lcom/android/server/SemTelephonyRegistry;->systemRunning()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    goto :goto_20

    :catchall_11
    move-exception v0

    .line 168
    const-string/jumbo v4, "Notifying SemTelephonyRegistry running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    :goto_20
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 170
    const-string/jumbo v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p20, :cond_1d

    .line 171
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v4, Lcom/android/server/media/MediaRouterService$1;

    move-object/from16 v12, p20

    invoke-direct {v4, v12}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    const-string/jumbo v5, "MediaRouterService"

    .line 172
    invoke-interface {v0, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/media/MediaRouterService;->updateRunningUserAndProfiles(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_12

    goto :goto_21

    :catchall_12
    move-exception v0

    .line 174
    const-string/jumbo v4, "Notifying MediaRouterService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :cond_1d
    :goto_21
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 176
    :try_start_16
    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 177
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V

    goto :goto_23

    :catch_3
    move-exception v0

    goto :goto_22

    .line 178
    :cond_1e
    const-string/jumbo v0, "Starting emergency service failed: emMgr is null"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    goto :goto_23

    .line 179
    :goto_22
    :try_start_17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Starting emergency service failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    goto :goto_23

    :catch_4
    move-exception v0

    .line 180
    const-string/jumbo v4, "Notifying EmergencyModeService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :goto_23
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.telephony"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 182
    const-string/jumbo v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p21, :cond_1f

    .line 183
    :try_start_18
    const-string/jumbo v0, "MmsServiceBroker"

    const-string v4, "Delay connecting to MmsService until an API is called"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    goto :goto_24

    :catchall_13
    move-exception v0

    .line 184
    const-string/jumbo v4, "Notifying MmsService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    :cond_1f
    :goto_24
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 186
    :cond_20
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 187
    :try_start_19
    const-string/jumbo v0, "incident"

    .line 188
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 190
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_14

    goto :goto_25

    :catchall_14
    move-exception v0

    .line 191
    const-string/jumbo v4, "Notifying incident daemon running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    :cond_21
    :goto_25
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 193
    iget-wide v4, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_22

    .line 194
    const-string/jumbo v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 195
    iget-wide v4, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v4, v5}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 196
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 197
    :cond_22
    :try_start_1a
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1110178

    .line 198
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    goto :goto_26

    :catch_5
    move-exception v0

    .line 199
    const-string/jumbo v4, "Not starting ExynosDisplaySolutionService"

    invoke-static {v13, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_23

    .line 200
    const-string v0, "ExynosDisplaySolution"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 201
    :try_start_1b
    const-string v0, "ExynosDisplaySolution Service"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string/jumbo v0, "exynos_display"

    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-direct {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    goto :goto_27

    :catchall_15
    move-exception v0

    .line 203
    const-string v4, "Failed To Start ExynosDisplaySolution Service "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    :goto_27
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 205
    :cond_23
    const-string/jumbo v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 206
    :try_start_1c
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v4, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_16

    goto :goto_28

    :catchall_16
    move-exception v0

    .line 207
    const-string/jumbo v4, "Triggering OdsignStatsLogger"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    :goto_28
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SemDisplayQualityFeature.ENABLED:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",PLATFORM:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    .line 210
    invoke-static {v0, v5, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_24

    .line 211
    const-string/jumbo v0, "SemDisplayQuality"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 212
    :try_start_1d
    const-string/jumbo v0, "SemDisplayQuality Service"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string/jumbo v0, "com.samsung.android.displayquality.SemDisplayQualityManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v12, 0x1

    .line 214
    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v5, v4, v17

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 215
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 216
    const-string v4, "DisplayQuality"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_17

    goto :goto_29

    :catchall_17
    move-exception v0

    .line 217
    const-string v4, "Failed To Start SemDisplayQuality Service "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :goto_29
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 219
    :cond_24
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;

    move/from16 v4, p22

    invoke-direct {v0, v1, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/SystemServer;Z)V

    const-string/jumbo v1, "Load of Classes of Lazy Services"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 220
    const-string/jumbo v0, "Mobile Payment Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 221
    :try_start_1e
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v4, v12, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 223
    const-string/jumbo v0, "mobile_payment"

    new-instance v4, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v4, v3}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_18

    goto :goto_2a

    :catchall_18
    move-exception v0

    .line 224
    const-string v4, "Failure starting Payment Manager Service"

    invoke-static {v13, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    :goto_2a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 226
    const-string/jumbo v0, "StartVoiceNoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/android/server/voicenote/VoiceNoteService;

    .line 228
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v5, "com.sec.android.app.voicenote"

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 232
    const-string/jumbo v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v7, 0x3e8

    .line 234
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 235
    new-instance v8, Lcom/android/server/voicenote/VoiceNoteService$UpdateReceiver;

    .line 236
    invoke-direct {v8}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 237
    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    invoke-static {v3}, Lcom/android/server/voicenote/VoiceNoteService;->backgroundAllowlist(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 240
    const-string/jumbo v0, "StartSamsungHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/android/server/shealth/SamsungHealthService;

    .line 242
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v4, "com.sec.android.app.shealth"

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 246
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 249
    new-instance v4, Lcom/android/server/shealth/SamsungHealthService$UpdateReceiver;

    .line 250
    invoke-direct {v4}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 251
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    invoke-static {v3}, Lcom/android/server/shealth/SamsungHealthService;->backgroundAllowlist(Landroid/content/Context;)V

    .line 253
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 254
    const-string v0, "LazyService Wait Here"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 255
    const-string v0, "Lazy Service"

    invoke-static {v1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/system/heapdump/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 29
    .line 30
    const-string/jumbo v0, "sys.system_server.start_count"

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x1

    .line 39
    add-int/2addr v0, v2

    .line 40
    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    iput-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 53
    .line 54
    move-wide v7, v3

    .line 55
    move-wide v9, v5

    .line 56
    invoke-static/range {v3 .. v10}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 57
    .line 58
    .line 59
    if-le v0, v2, :cond_0

    .line 60
    .line 61
    move v1, v2

    .line 62
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 63
    .line 64
    return-void
.end method

.method public static deviceHasConfigString(Landroid/content/Context;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method private static native fdtrackAbort()V
.end method

.method public static getMaxFd()I
    .locals 5

    .line 1
    const-string v0, "Failed to get maximum fd: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "/dev/null"

    .line 5
    .line 6
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    .line 7
    .line 8
    sget v4, Landroid/system/OsConstants;->O_CLOEXEC:I

    .line 9
    .line 10
    or-int/2addr v3, v4

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception v2

    .line 34
    :try_start_2
    const-string/jumbo v3, "System"

    .line 35
    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    :try_start_3
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_2
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :cond_0
    :goto_0
    const v0, 0x7fffffff

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :goto_1
    if-eqz v1, :cond_1

    .line 70
    .line 71
    :try_start_4
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_3
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_1
    :goto_2
    throw v0
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13

    .line 1
    new-instance p0, Lcom/android/server/SystemServer;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/SystemServer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "********** Failed to load jvmti plugin: "

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v2, Landroid/tracing/perfetto/InitArguments;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    const/16 v4, 0x1000

    .line 17
    .line 18
    invoke-direct {v2, v3, v4}, Landroid/tracing/perfetto/InitArguments;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "InitBeforeStartServices"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v2, "sys.system_server.start_count"

    .line 30
    .line 31
    .line 32
    iget v3, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v2, "sys.system_server.start_elapsed"

    .line 42
    .line 43
    .line 44
    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 45
    .line 46
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v2, "sys.system_server.start_uptime"

    .line 54
    .line 55
    .line 56
    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 57
    .line 58
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v2, "sys.system_server.pid"

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "SystemServer"

    .line 80
    .line 81
    .line 82
    const-string v3, "!@Boot_EBS_F: SYSTEM_SERVER_START"

    .line 83
    .line 84
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 94
    .line 95
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 100
    .line 101
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const/16 v3, 0xbc3

    .line 110
    .line 111
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 115
    .line 116
    .line 117
    const-string/jumbo v2, "persist.sys.language"

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_0

    .line 129
    .line 130
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const-string/jumbo v3, "persist.sys.locale"

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v2, "persist.sys.language"

    .line 145
    .line 146
    .line 147
    const-string v3, ""

    .line 148
    .line 149
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string/jumbo v2, "persist.sys.country"

    .line 153
    .line 154
    .line 155
    const-string v3, ""

    .line 156
    .line 157
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string/jumbo v2, "persist.sys.localevar"

    .line 161
    .line 162
    .line 163
    const-string v3, ""

    .line 164
    .line 165
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :catchall_0
    move-exception p0

    .line 170
    goto/16 :goto_6

    .line 171
    .line 172
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->setSystemServerProcess()V

    .line 173
    .line 174
    .line 175
    const/4 v2, 0x1

    .line 176
    invoke-static {v2}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 180
    .line 181
    .line 182
    const-string v3, "FULL"

    .line 183
    .line 184
    sput-object v3, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string/jumbo v4, "SystemServer"

    .line 191
    .line 192
    .line 193
    const-string v5, "Entered the Android system server!"

    .line 194
    .line 195
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    const-string/jumbo v4, "SystemServer"

    .line 199
    .line 200
    .line 201
    const-string v5, "!@Boot: Entered the Android system server!"

    .line 202
    .line 203
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    const-string/jumbo v4, "SystemServer"

    .line 207
    .line 208
    .line 209
    const-string v5, "!@Boot_EBS_F: BOOT_PROGRESS_SYSTEM_RUN"

    .line 210
    .line 211
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 215
    .line 216
    .line 217
    move-result-wide v4

    .line 218
    const/16 v6, 0xbc2

    .line 219
    .line 220
    invoke-static {v6, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 221
    .line 222
    .line 223
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 224
    .line 225
    const/16 v7, 0xf0

    .line 226
    .line 227
    if-nez v6, :cond_1

    .line 228
    .line 229
    const/16 v6, 0x13

    .line 230
    .line 231
    invoke-static {v7, v6, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 232
    .line 233
    .line 234
    :cond_1
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    .line 235
    .line 236
    .line 237
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 253
    .line 254
    .line 255
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 256
    .line 257
    .line 258
    invoke-static {v2}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 259
    .line 260
    .line 261
    invoke-static {v2}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 262
    .line 263
    .line 264
    invoke-static {v2}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 265
    .line 266
    .line 267
    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 268
    .line 269
    .line 270
    const/16 v4, 0x1f

    .line 271
    .line 272
    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 273
    .line 274
    .line 275
    const/4 v4, -0x2

    .line 276
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 277
    .line 278
    .line 279
    const/4 v4, 0x0

    .line 280
    invoke-static {v4}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 281
    .line 282
    .line 283
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 284
    .line 285
    .line 286
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    const-wide/16 v8, 0x64

    .line 291
    .line 292
    const-wide/16 v10, 0xc8

    .line 293
    .line 294
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 295
    .line 296
    .line 297
    sput-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 298
    .line 299
    sget-object v5, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    .line 300
    .line 301
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    sget-object v6, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 303
    .line 304
    if-nez v6, :cond_2

    .line 305
    .line 306
    move v6, v2

    .line 307
    goto :goto_1

    .line 308
    :cond_2
    move v6, v4

    .line 309
    :goto_1
    const-string/jumbo v8, "SystemServerInitThreadPool already started"

    .line 310
    .line 311
    .line 312
    invoke-static {v6, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v6, Lcom/android/server/SystemServerInitThreadPool;

    .line 316
    .line 317
    invoke-direct {v6}, Lcom/android/server/SystemServerInitThreadPool;-><init>()V

    .line 318
    .line 319
    .line 320
    sput-object v6, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 321
    .line 322
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 323
    :try_start_2
    iget-object v5, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 324
    .line 325
    invoke-static {v5, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 326
    .line 327
    .line 328
    const-string/jumbo v5, "SystemServer"

    .line 329
    .line 330
    .line 331
    const-string/jumbo v6, "Reading configuration..."

    .line 332
    .line 333
    .line 334
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    const-string/jumbo v5, "ReadingSystemConfig"

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 344
    .line 345
    const/4 v8, 0x0

    .line 346
    invoke-direct {v6, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 347
    .line 348
    .line 349
    invoke-static {v6, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 353
    .line 354
    .line 355
    const-string/jumbo v5, "android_servers"

    .line 356
    .line 357
    .line 358
    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 362
    .line 363
    .line 364
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 365
    .line 366
    if-eqz v5, :cond_3

    .line 367
    .line 368
    const-string/jumbo v6, "persist.sys.debug.fdtrack_enable_threshold"

    .line 369
    .line 370
    .line 371
    const/16 v8, 0x640

    .line 372
    .line 373
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    const-string/jumbo v8, "persist.sys.debug.fdtrack_abort_threshold"

    .line 378
    .line 379
    .line 380
    const/16 v9, 0xbb8

    .line 381
    .line 382
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 383
    .line 384
    .line 385
    move-result v8

    .line 386
    const-string/jumbo v9, "persist.sys.debug.fdtrack_interval"

    .line 387
    .line 388
    .line 389
    const/16 v10, 0x78

    .line 390
    .line 391
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 392
    .line 393
    .line 394
    move-result v9

    .line 395
    new-instance v10, Ljava/lang/Thread;

    .line 396
    .line 397
    new-instance v11, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    .line 398
    .line 399
    invoke-direct {v11, v6, v8, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>(III)V

    .line 400
    .line 401
    .line 402
    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 406
    .line 407
    .line 408
    :cond_3
    invoke-static {}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 409
    .line 410
    .line 411
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    iput-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 420
    .line 421
    const v9, 0x1030461

    .line 422
    .line 423
    .line 424
    invoke-virtual {v8, v9}, Landroid/content/Context;->setTheme(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    invoke-virtual {v6, v9}, Landroid/content/Context;->setTheme(I)V

    .line 432
    .line 433
    .line 434
    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    .line 435
    .line 436
    .line 437
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 438
    .line 439
    .line 440
    const-string/jumbo v6, "system_server_dumper"

    .line 441
    .line 442
    .line 443
    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 444
    .line 445
    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 446
    .line 447
    .line 448
    iget-object v6, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 449
    .line 450
    invoke-static {v6, p0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 451
    .line 452
    .line 453
    new-instance v6, Lcom/android/server/SystemServiceManager;

    .line 454
    .line 455
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 456
    .line 457
    invoke-direct {v6, v8}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    .line 458
    .line 459
    .line 460
    iput-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 461
    .line 462
    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 463
    .line 464
    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 465
    .line 466
    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 467
    .line 468
    iput-boolean v8, v6, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 469
    .line 470
    iput-wide v9, v6, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    .line 471
    .line 472
    iput-wide v11, v6, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    .line 473
    .line 474
    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 475
    .line 476
    invoke-static {v8, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 477
    .line 478
    .line 479
    const-class v6, Lcom/android/server/SystemServiceManager;

    .line 480
    .line 481
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 482
    .line 483
    invoke-static {v6, v8}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    const-string/jumbo v6, "SystemServer"

    .line 487
    .line 488
    .line 489
    const-string/jumbo v8, "Loading pre-installed system font map."

    .line 490
    .line 491
    .line 492
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 496
    .line 497
    .line 498
    if-eqz v5, :cond_4

    .line 499
    .line 500
    const-string/jumbo v5, "persist.sys.dalvik.jvmtiagent"

    .line 501
    .line 502
    .line 503
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 508
    .line 509
    .line 510
    move-result v6

    .line 511
    if-nez v6, :cond_4

    .line 512
    .line 513
    const/16 v6, 0x3d

    .line 514
    .line 515
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 516
    .line 517
    .line 518
    move-result v6

    .line 519
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v8

    .line 523
    add-int/2addr v6, v2

    .line 524
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    :try_start_3
    invoke-static {v8, v2, v3}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    .line 534
    .line 535
    goto :goto_2

    .line 536
    :catch_0
    :try_start_4
    const-string/jumbo v2, "System"

    .line 537
    .line 538
    .line 539
    const-string v6, "*************************************************"

    .line 540
    .line 541
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    const-string/jumbo v2, "System"

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 552
    .line 553
    .line 554
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 555
    .line 556
    .line 557
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    .line 558
    .line 559
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 560
    .line 561
    .line 562
    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 563
    .line 564
    .line 565
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->create()Lcom/android/internal/os/ApplicationSharedMemory;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-static {v0}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    .line 570
    .line 571
    .line 572
    :try_start_5
    const-string/jumbo v0, "StartServices"

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    const-string/jumbo v0, "SystemServer"

    .line 579
    .line 580
    .line 581
    const-string v2, "!@Boot_EBS_F: startBootstrapServices"

    .line 582
    .line 583
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .line 585
    .line 586
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 587
    .line 588
    .line 589
    const-string/jumbo v0, "SystemServer"

    .line 590
    .line 591
    .line 592
    const-string v2, "!@Boot_EBS_F: startCoreServices"

    .line 593
    .line 594
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 598
    .line 599
    .line 600
    const-string/jumbo v0, "SystemServer"

    .line 601
    .line 602
    .line 603
    const-string v2, "!@Boot_EBS_F: startOtherServices"

    .line 604
    .line 605
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 612
    .line 613
    .line 614
    const-string/jumbo v0, "UpdateWatchdogTimeout"

    .line 615
    .line 616
    .line 617
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 625
    .line 626
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    const-string/jumbo v6, "system_server_watchdog_timeout_ms"

    .line 634
    .line 635
    .line 636
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 637
    .line 638
    .line 639
    move-result-object v6

    .line 640
    new-instance v8, Lcom/android/server/Watchdog$SettingsObserver;

    .line 641
    .line 642
    invoke-direct {v8, v2, v0}, Lcom/android/server/Watchdog$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v5, v6, v4, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 649
    .line 650
    .line 651
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 659
    .line 660
    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 661
    .line 662
    .line 663
    new-instance v5, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    .line 664
    .line 665
    invoke-direct {v5}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;-><init>()V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v2, v5}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setSystemServerStarted(Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0, v2}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 675
    .line 676
    .line 677
    invoke-static {v3}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 678
    .line 679
    .line 680
    const-wide/16 v0, 0x80

    .line 681
    .line 682
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    const-string/jumbo v3, "com.samsung.android.voc"

    .line 687
    .line 688
    .line 689
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 690
    .line 691
    .line 692
    move-result v5

    .line 693
    invoke-interface {v2, v3, v0, v1, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    if-eqz v2, :cond_5

    .line 698
    .line 699
    const-string/jumbo v2, "sys.members.installed"

    .line 700
    .line 701
    .line 702
    const-string/jumbo v3, "true"

    .line 703
    .line 704
    .line 705
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 706
    .line 707
    .line 708
    :catch_1
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 709
    .line 710
    if-nez v2, :cond_7

    .line 711
    .line 712
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 713
    .line 714
    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 715
    .line 716
    if-nez v3, :cond_7

    .line 717
    .line 718
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    if-eqz v2, :cond_6

    .line 723
    .line 724
    goto :goto_3

    .line 725
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 726
    .line 727
    .line 728
    move-result-wide v2

    .line 729
    const/16 v5, 0x14

    .line 730
    .line 731
    invoke-static {v7, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 732
    .line 733
    .line 734
    const-wide/32 v5, 0xea60

    .line 735
    .line 736
    .line 737
    cmp-long v5, v2, v5

    .line 738
    .line 739
    if-lez v5, :cond_7

    .line 740
    .line 741
    const-string/jumbo v5, "SystemServerTiming"

    .line 742
    .line 743
    .line 744
    new-instance v6, Ljava/lang/StringBuilder;

    .line 745
    .line 746
    const-string/jumbo v7, "SystemServer init took too long. uptimeMillis="

    .line 747
    .line 748
    .line 749
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    :cond_7
    :goto_3
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 763
    .line 764
    if-eqz v2, :cond_8

    .line 765
    .line 766
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    new-instance v3, Lcom/android/server/SystemServer$1;

    .line 771
    .line 772
    invoke-direct {v3, v2}, Lcom/android/server/SystemServer$1;-><init>(I)V

    .line 773
    .line 774
    .line 775
    new-instance v2, Ljava/util/Timer;

    .line 776
    .line 777
    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 778
    .line 779
    .line 780
    const-wide/16 v5, 0x7530

    .line 781
    .line 782
    invoke-virtual {v2, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 783
    .line 784
    .line 785
    :cond_8
    new-instance v2, Lcom/android/server/SystemServer$2;

    .line 786
    .line 787
    invoke-direct {v2, p0}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    .line 788
    .line 789
    .line 790
    invoke-static {v2}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 791
    .line 792
    .line 793
    new-instance p0, Lcom/android/server/SystemServer$3;

    .line 794
    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    .line 797
    .line 798
    invoke-static {p0}, Ldalvik/system/VMRuntime;->addPostCleanupCallback(Ljava/lang/Runnable;)V

    .line 799
    .line 800
    .line 801
    :try_start_7
    const-string/jumbo p0, "persist.sys.is_usertrial"

    .line 802
    .line 803
    .line 804
    invoke-static {p0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 805
    .line 806
    .line 807
    move-result p0

    .line 808
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    const-string/jumbo v3, "com.salab.issuetracker"

    .line 813
    .line 814
    .line 815
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 816
    .line 817
    .line 818
    move-result v4

    .line 819
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    if-nez p0, :cond_a

    .line 824
    .line 825
    if-nez v0, :cond_9

    .line 826
    .line 827
    goto :goto_4

    .line 828
    :cond_9
    const-string/jumbo p0, "persist.sys.is_usertrial"

    .line 829
    .line 830
    .line 831
    const-string/jumbo v0, "true"

    .line 832
    .line 833
    .line 834
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    goto :goto_5

    .line 838
    :cond_a
    :goto_4
    if-eqz p0, :cond_b

    .line 839
    .line 840
    if-nez v0, :cond_b

    .line 841
    .line 842
    const-string/jumbo p0, "persist.sys.is_usertrial"

    .line 843
    .line 844
    .line 845
    const-string/jumbo v0, "false"

    .line 846
    .line 847
    .line 848
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 849
    .line 850
    .line 851
    :catch_2
    :cond_b
    :goto_5
    const-string/jumbo p0, "SystemServer"

    .line 852
    .line 853
    .line 854
    const-string v0, "!@Boot: Loop forever"

    .line 855
    .line 856
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    const-string/jumbo p0, "SystemServer"

    .line 860
    .line 861
    .line 862
    const-string v0, "!@Boot_EBS_D: Loop forever"

    .line 863
    .line 864
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .line 866
    .line 867
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 868
    .line 869
    .line 870
    new-instance p0, Ljava/lang/RuntimeException;

    .line 871
    .line 872
    const-string/jumbo v0, "Main thread loop unexpectedly exited"

    .line 873
    .line 874
    .line 875
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    throw p0

    .line 879
    :catchall_1
    move-exception p0

    .line 880
    :try_start_8
    const-string/jumbo v0, "System"

    .line 881
    .line 882
    .line 883
    const-string v2, "******************************************"

    .line 884
    .line 885
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .line 887
    .line 888
    const-string/jumbo v0, "System"

    .line 889
    .line 890
    .line 891
    const-string v2, "************ Failure starting system services"

    .line 892
    .line 893
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    .line 895
    .line 896
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 897
    :catchall_2
    move-exception p0

    .line 898
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 899
    .line 900
    .line 901
    throw p0

    .line 902
    :catchall_3
    move-exception p0

    .line 903
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 904
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 905
    :goto_6
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 906
    .line 907
    .line 908
    throw p0
.end method

.method public static performPendingShutdown()V
    .locals 8

    .line 1
    const-string/jumbo v0, "SystemServer"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "sys.shutdown.requested"

    .line 5
    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x31

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    move v3, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v2

    .line 34
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v6, 0x0

    .line 39
    if-le v4, v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v1, v6

    .line 51
    :goto_1
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string/jumbo v4, "recovery-update"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    new-instance v4, Ljava/io/File;

    .line 63
    .line 64
    const-string v7, "/cache/recovery/uncrypt_file"

    .line 65
    .line 66
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    :try_start_0
    invoke-static {v4, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception v2

    .line 81
    const-string v4, "Error reading uncrypt package file"

    .line 82
    .line 83
    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    :goto_2
    if-eqz v6, :cond_2

    .line 87
    .line 88
    const-string v2, "/data"

    .line 89
    .line 90
    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    const-string v2, "/cache/recovery/block.map"

    .line 97
    .line 98
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    const-string v1, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    .line 105
    .line 106
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    new-instance v0, Lcom/android/server/SystemServer$4;

    .line 111
    .line 112
    invoke-direct {v0, v1, v3}, Lcom/android/server/SystemServer$4;-><init>(Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void
.end method

.method public static reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "SystemServer"

    .line 2
    .line 3
    .line 4
    const-string v1, "***********************************************"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "BOOT FAILURE "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static native startHidlServices()V
.end method

.method private static native startISensorManagerService()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method public static startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V
    .locals 7

    .line 1
    const-string/jumbo v0, "startRCPService | Fail to start service"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "startRCPService | context is null"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    const-string/jumbo v5, "persist.sys.knox.device_owner"

    .line 28
    .line 29
    .line 30
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    const-string/jumbo v6, "true"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    move v3, v4

    .line 46
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v5, "startRCPService | KnoxPresentInDevice : "

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, ", DoEnabled : "

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string/jumbo v5, "SystemServer"

    .line 70
    .line 71
    .line 72
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :try_start_0
    const-string/jumbo v4, "RCPManagerService"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    const-string/jumbo v4, "rcp"

    .line 82
    .line 83
    .line 84
    if-nez p2, :cond_4

    .line 85
    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    :cond_2
    :try_start_1
    const-string/jumbo p2, "startRCPService | add Service : RCPManagerService , rcp"

    .line 91
    .line 92
    .line 93
    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    if-nez p0, :cond_3

    .line 97
    .line 98
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception p2

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    :try_start_2
    new-instance p2, Lcom/android/server/RCPManagerService;

    .line 108
    .line 109
    invoke-direct {p2, p0}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v4, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    if-eqz p2, :cond_5

    .line 117
    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    if-nez v3, :cond_5

    .line 121
    .line 122
    const-string/jumbo p2, "startRCPService | add Lazy Service : RCPManagerService , rcp"

    .line 123
    .line 124
    .line 125
    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    const-class p2, Lcom/android/server/RCPManagerService;

    .line 129
    .line 130
    invoke-static {v4, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :goto_2
    :try_start_3
    invoke-static {v5, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :goto_3
    :try_start_4
    const-string p2, "KnoxMUMRCPPolicyService"

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    .line 145
    .line 146
    const-string/jumbo p2, "mum_container_rcp_policy"

    .line 147
    .line 148
    .line 149
    if-nez v2, :cond_7

    .line 150
    .line 151
    if-eqz v3, :cond_6

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    :try_start_5
    const-string/jumbo p0, "startRCPService | add Lazy Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    .line 155
    .line 156
    .line 157
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    new-instance p0, Lcom/android/server/SystemServer$5;

    .line 161
    .line 162
    const/4 v1, 0x3

    .line 163
    invoke-direct {p0, v1}, Lcom/android/server/SystemServer$5;-><init>(I)V

    .line 164
    .line 165
    .line 166
    invoke-static {p2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :catchall_1
    move-exception p0

    .line 171
    goto :goto_6

    .line 172
    :cond_7
    :goto_4
    const-string/jumbo v2, "startRCPService | add Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    .line 173
    .line 174
    .line 175
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    if-nez p0, :cond_8

    .line 179
    .line 180
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_8
    :try_start_6
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 188
    .line 189
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 193
    .line 194
    .line 195
    :goto_5
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 196
    .line 197
    .line 198
    goto :goto_7

    .line 199
    :goto_6
    :try_start_7
    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :goto_7
    return-void

    .line 204
    :catchall_2
    move-exception p0

    .line 205
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 206
    .line 207
    .line 208
    throw p0

    .line 209
    :catchall_3
    move-exception p0

    .line 210
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 211
    .line 212
    .line 213
    throw p0
.end method

.method public static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x100

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string/jumbo v0, "Runtime restart: %b\n"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 15
    .line 16
    .line 17
    iget p2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string/jumbo v0, "Start count: %d\n"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 31
    .line 32
    .line 33
    const-string/jumbo p2, "Runtime start-up time: "

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 40
    .line 41
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 45
    .line 46
    .line 47
    const-string/jumbo p2, "Runtime start-elapsed time: "

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 54
    .line 55
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final getDumpableName()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/SystemServer;

    .line 2
    .line 3
    const-string/jumbo p0, "SystemServer"

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 7

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-string/jumbo v0, "debug.crash_system"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    const-string/jumbo v0, "startApexServices"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v3, v1

    .line 44
    :goto_1
    const-string v4, "APEX packages have not been scanned"

    .line 45
    .line 46
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 50
    .line 51
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :goto_2
    if-ge v1, v2, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    check-cast v3, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 67
    .line 68
    iget-object v4, v3, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string/jumbo v6, "starting "

    .line 75
    .line 76
    .line 77
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_3

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 103
    .line 104
    invoke-virtual {v5, v4, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 121
    .line 122
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    throw p0
.end method

.method public final startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "SystemServer"

    .line 16
    .line 17
    .line 18
    const-string p1, "AttentionService is not configured on this device"

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string/jumbo p1, "StartAttentionManagerService"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 31
    .line 32
    const-class p1, Lcom/android/server/attention/AttentionManagerService;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string/jumbo v0, "startBootstrapServices"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "ArtModuleServiceInitializer"

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/os/ArtModuleServiceManager;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/ArtModuleServiceManager;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "StartWatchdog"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-object v0, v6, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 45
    .line 46
    invoke-static {v0, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 50
    .line 51
    .line 52
    const-string v0, "InitializeProtoLog"

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups;->values()[Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 65
    .line 66
    .line 67
    const-string/jumbo v0, "PlatformCompat"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v7, Lcom/android/server/compat/PlatformCompat;

    .line 74
    .line 75
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-direct {v7, v0}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v0, "platform_compat"

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v0, "platform_compat_native"

    .line 87
    .line 88
    .line 89
    new-instance v8, Lcom/android/server/compat/PlatformCompatNative;

    .line 90
    .line 91
    invoke-direct {v8, v7}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 95
    .line 96
    .line 97
    new-array v0, v5, [J

    .line 98
    .line 99
    new-array v8, v5, [J

    .line 100
    .line 101
    invoke-static {v0, v8}, Landroid/app/AppCompatCallbacks;->install([J[J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 105
    .line 106
    .line 107
    const-string/jumbo v0, "StartFileIntegrityService"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 114
    .line 115
    const-class v8, Lcom/android/server/security/FileIntegrityService;

    .line 116
    .line 117
    const-string/jumbo v9, "StartInstaller"

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 124
    .line 125
    const-class v8, Lcom/android/server/pm/Installer;

    .line 126
    .line 127
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/android/server/pm/Installer;

    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 134
    .line 135
    .line 136
    const-string v8, "DeviceIdentifiersPolicyService"

    .line 137
    .line 138
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 142
    .line 143
    const-class v9, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    .line 144
    .line 145
    const-string/jumbo v10, "StartFeatureFlagsService"

    .line 146
    .line 147
    .line 148
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 152
    .line 153
    const-class v9, Lcom/android/server/flags/FeatureFlagsService;

    .line 154
    .line 155
    const-string/jumbo v10, "UriGrantsManagerService"

    .line 156
    .line 157
    .line 158
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 162
    .line 163
    const-class v9, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    .line 164
    .line 165
    const-string/jumbo v10, "StartPowerStatsService"

    .line 166
    .line 167
    .line 168
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 172
    .line 173
    const-class v9, Lcom/android/server/powerstats/PowerStatsService;

    .line 174
    .line 175
    const-string/jumbo v10, "StartIStatsService"

    .line 176
    .line 177
    .line 178
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 185
    .line 186
    .line 187
    const-string/jumbo v8, "MemtrackProxyService"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 197
    .line 198
    .line 199
    const-string/jumbo v8, "StartAccessCheckingService"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-class v8, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 206
    .line 207
    new-instance v9, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 208
    .line 209
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-static {v8, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    const-class v8, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 216
    .line 217
    new-instance v9, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 218
    .line 219
    invoke-direct {v9}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-static {v8, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 226
    .line 227
    const-class v9, Lcom/android/server/permission/access/AccessCheckingService;

    .line 228
    .line 229
    const-string/jumbo v10, "StartActivityManager"

    .line 230
    .line 231
    .line 232
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 236
    .line 237
    const-class v9, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 238
    .line 239
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    check-cast v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 244
    .line 245
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 246
    .line 247
    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 248
    .line 249
    sput-object v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 250
    .line 251
    const-class v10, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 252
    .line 253
    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    check-cast v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 258
    .line 259
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 260
    .line 261
    iput-object v9, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 262
    .line 263
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 264
    .line 265
    iput-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 266
    .line 267
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 271
    .line 272
    .line 273
    const-string/jumbo v8, "StartDataLoaderManagerService"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 280
    .line 281
    const-class v9, Lcom/android/server/pm/DataLoaderManagerService;

    .line 282
    .line 283
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    check-cast v8, Lcom/android/server/pm/DataLoaderManagerService;

    .line 288
    .line 289
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 290
    .line 291
    .line 292
    const-string/jumbo v8, "StartIncrementalService"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    .line 299
    .line 300
    .line 301
    move-result-wide v8

    .line 302
    iput-wide v8, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 303
    .line 304
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 305
    .line 306
    .line 307
    const-string/jumbo v8, "StartPowerManager"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 314
    .line 315
    const-class v9, Lcom/android/server/power/PowerManagerService;

    .line 316
    .line 317
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    check-cast v8, Lcom/android/server/power/PowerManagerService;

    .line 322
    .line 323
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 324
    .line 325
    .line 326
    const-string/jumbo v8, "StartThermalManager"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 333
    .line 334
    const-class v9, Lcom/android/server/power/ThermalManagerService;

    .line 335
    .line 336
    const-string v10, "InitPowerManagement"

    .line 337
    .line 338
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object v8, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 342
    .line 343
    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 344
    .line 345
    iget-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 346
    .line 347
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 348
    .line 349
    .line 350
    monitor-enter v10

    .line 351
    :try_start_0
    iget-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 352
    .line 353
    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 354
    .line 355
    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 356
    .line 357
    const-class v13, Landroid/os/PowerManager;

    .line 358
    .line 359
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    check-cast v12, Landroid/os/PowerManager;

    .line 364
    .line 365
    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 366
    .line 367
    const-string v13, "ActivityManager-Sleep"

    .line 368
    .line 369
    invoke-virtual {v12, v4, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 374
    .line 375
    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 376
    .line 377
    const-string v13, "*launch*"

    .line 378
    .line 379
    invoke-virtual {v12, v4, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 380
    .line 381
    .line 382
    move-result-object v12

    .line 383
    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 384
    .line 385
    invoke-virtual {v12, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 386
    .line 387
    .line 388
    iget-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 389
    .line 390
    const-string/jumbo v12, "power"

    .line 391
    .line 392
    .line 393
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v11

    .line 397
    check-cast v11, Landroid/os/PowerManager;

    .line 398
    .line 399
    const-class v12, Landroid/os/PowerManagerInternal;

    .line 400
    .line 401
    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v12

    .line 405
    check-cast v12, Landroid/os/PowerManagerInternal;

    .line 406
    .line 407
    iput-object v12, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 408
    .line 409
    const-string v12, "*voice*"

    .line 410
    .line 411
    invoke-virtual {v11, v4, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    iput-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 416
    .line 417
    invoke-virtual {v11, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 418
    .line 419
    .line 420
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 421
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 422
    .line 423
    .line 424
    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 425
    .line 426
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    const-class v10, Landroid/os/PowerManagerInternal;

    .line 430
    .line 431
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v10

    .line 435
    check-cast v10, Landroid/os/PowerManagerInternal;

    .line 436
    .line 437
    invoke-virtual {v10, v9}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 438
    .line 439
    .line 440
    iget-object v11, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 441
    .line 442
    monitor-enter v11

    .line 443
    :try_start_1
    iget-object v12, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 444
    .line 445
    const/16 v13, 0x9

    .line 446
    .line 447
    invoke-virtual {v10, v13}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    iget-boolean v10, v10, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 452
    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 454
    .line 455
    .line 456
    move-result-wide v13

    .line 457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 458
    .line 459
    .line 460
    move-result-wide v15

    .line 461
    iget-boolean v3, v12, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    .line 462
    .line 463
    if-eq v3, v10, :cond_0

    .line 464
    .line 465
    move/from16 v17, v10

    .line 466
    .line 467
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLocked(JJZ)V

    .line 468
    .line 469
    .line 470
    goto :goto_0

    .line 471
    :cond_0
    move v3, v10

    .line 472
    iget-object v10, v12, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    .line 473
    .line 474
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    const/16 v10, 0x14

    .line 478
    .line 479
    invoke-static {v10, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 480
    .line 481
    .line 482
    :goto_0
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 483
    new-instance v3, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    .line 484
    .line 485
    invoke-direct {v3, v9}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 489
    .line 490
    .line 491
    const-class v3, Landroid/os/PowerManagerInternal;

    .line 492
    .line 493
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    check-cast v3, Landroid/os/PowerManagerInternal;

    .line 498
    .line 499
    iput-object v3, v8, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 500
    .line 501
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 502
    .line 503
    .line 504
    const-string/jumbo v3, "VaultKeeperService"

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 511
    .line 512
    const-class v8, Lcom/android/server/VaultKeeperService$LifeCycle;

    .line 513
    .line 514
    const-string/jumbo v9, "StartRecoverySystemService"

    .line 515
    .line 516
    .line 517
    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 521
    .line 522
    const-class v8, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    .line 523
    .line 524
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 528
    .line 529
    .line 530
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 531
    .line 532
    sget v8, Lcom/android/server/RescueParty;->LEVEL_ISRB_BOOT:I

    .line 533
    .line 534
    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 535
    .line 536
    .line 537
    move-result-object v8

    .line 538
    invoke-static {v3}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    invoke-virtual {v8, v3}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 543
    .line 544
    .line 545
    const-string/jumbo v3, "StartLightsService"

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 552
    .line 553
    const-class v8, Lcom/android/server/lights/LightsService;

    .line 554
    .line 555
    const-string/jumbo v9, "StartPdpService"

    .line 556
    .line 557
    .line 558
    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 562
    .line 563
    const-class v8, Lcom/android/server/pdp/PdpService;

    .line 564
    .line 565
    const-string/jumbo v9, "StartDisplayOffloadService"

    .line 566
    .line 567
    .line 568
    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    const-string/jumbo v3, "config.enable_display_offload"

    .line 572
    .line 573
    .line 574
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    if-eqz v3, :cond_1

    .line 579
    .line 580
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 581
    .line 582
    const-string/jumbo v8, "com.android.clockwork.displayoffload.DisplayOffloadService"

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 586
    .line 587
    .line 588
    :cond_1
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 589
    .line 590
    .line 591
    const-string/jumbo v3, "StartDisplayManager"

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 598
    .line 599
    const-class v8, Lcom/android/server/display/DisplayManagerService;

    .line 600
    .line 601
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    .line 606
    .line 607
    iput-object v3, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 608
    .line 609
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 610
    .line 611
    .line 612
    const-string/jumbo v3, "WaitForDisplay"

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    const-string/jumbo v3, "SystemServer"

    .line 619
    .line 620
    .line 621
    const-string v8, "!@Boot_EBS_D: PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    .line 622
    .line 623
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 627
    .line 628
    const/16 v8, 0x64

    .line 629
    .line 630
    invoke-virtual {v3, v2, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 634
    .line 635
    .line 636
    iget-boolean v3, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 637
    .line 638
    const/16 v8, 0xe

    .line 639
    .line 640
    const/16 v9, 0xf0

    .line 641
    .line 642
    if-nez v3, :cond_2

    .line 643
    .line 644
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 645
    .line 646
    .line 647
    move-result-wide v10

    .line 648
    invoke-static {v9, v8, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 649
    .line 650
    .line 651
    :cond_2
    const-string/jumbo v3, "StartDomainVerificationService"

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    new-instance v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 658
    .line 659
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 660
    .line 661
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 662
    .line 663
    .line 664
    move-result-object v11

    .line 665
    invoke-direct {v3, v10, v11, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 666
    .line 667
    .line 668
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 669
    .line 670
    invoke-virtual {v10, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 674
    .line 675
    .line 676
    const-string/jumbo v10, "StartPackageManagerService"

    .line 677
    .line 678
    .line 679
    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    const-string/jumbo v10, "SystemServer"

    .line 683
    .line 684
    .line 685
    const-string v11, "!@Boot: Start PackageManagerService"

    .line 686
    .line 687
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .line 689
    .line 690
    :try_start_2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 691
    .line 692
    .line 693
    move-result-object v10

    .line 694
    const-string/jumbo v11, "packagemanagermain"

    .line 695
    .line 696
    .line 697
    invoke-virtual {v10, v11}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 701
    .line 702
    iget v11, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 703
    .line 704
    if-eqz v11, :cond_3

    .line 705
    .line 706
    move v11, v4

    .line 707
    goto :goto_1

    .line 708
    :cond_3
    move v11, v5

    .line 709
    :goto_1
    invoke-static {v10, v0, v3, v11}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 714
    .line 715
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    const-string/jumbo v3, "packagemanagermain"

    .line 720
    .line 721
    .line 722
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    const-string/jumbo v0, "SystemServer"

    .line 726
    .line 727
    .line 728
    const-string v3, "!@Boot: End PackageManagerService"

    .line 729
    .line 730
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 734
    .line 735
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 736
    .line 737
    iput-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 738
    .line 739
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 740
    .line 741
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 746
    .line 747
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 748
    .line 749
    .line 750
    const-string v0, "DexUseManagerLocal"

    .line 751
    .line 752
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    .line 756
    .line 757
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 758
    .line 759
    invoke-static {v3}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    .line 760
    .line 761
    .line 762
    move-result-object v3

    .line 763
    invoke-static {v0, v3}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 767
    .line 768
    .line 769
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 770
    .line 771
    if-nez v0, :cond_5

    .line 772
    .line 773
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 774
    .line 775
    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 776
    .line 777
    if-nez v3, :cond_5

    .line 778
    .line 779
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    if-eqz v0, :cond_4

    .line 784
    .line 785
    goto :goto_2

    .line 786
    :cond_4
    const/16 v0, 0xf

    .line 787
    .line 788
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 789
    .line 790
    .line 791
    move-result-wide v10

    .line 792
    invoke-static {v9, v0, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 793
    .line 794
    .line 795
    :cond_5
    :goto_2
    const-string/jumbo v0, "StartASKSManagerService"

    .line 796
    .line 797
    .line 798
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 802
    .line 803
    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 804
    .line 805
    const-string/jumbo v3, "main starts"

    .line 806
    .line 807
    .line 808
    const-string v9, "ASKSManager"

    .line 809
    .line 810
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .line 812
    .line 813
    new-instance v3, Lcom/android/server/asks/ASKSManagerService;

    .line 814
    .line 815
    invoke-direct {v3, v0}, Lcom/android/server/asks/ASKSManagerService;-><init>(Landroid/content/Context;)V

    .line 816
    .line 817
    .line 818
    const-string/jumbo v0, "asks"

    .line 819
    .line 820
    .line 821
    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 822
    .line 823
    .line 824
    const-string/jumbo v0, "main ends"

    .line 825
    .line 826
    .line 827
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .line 829
    .line 830
    iput-object v3, v1, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    .line 831
    .line 832
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 833
    .line 834
    .line 835
    const-string/jumbo v0, "config.disable_otadexopt"

    .line 836
    .line 837
    .line 838
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    if-nez v0, :cond_6

    .line 843
    .line 844
    const-string/jumbo v0, "StartOtaDexOptService"

    .line 845
    .line 846
    .line 847
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    :try_start_3
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    const-string/jumbo v3, "moveab"

    .line 855
    .line 856
    .line 857
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 861
    .line 862
    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 863
    .line 864
    invoke-static {v0, v3}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 865
    .line 866
    .line 867
    :goto_3
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    const-string/jumbo v3, "moveab"

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 878
    .line 879
    .line 880
    goto :goto_4

    .line 881
    :catchall_0
    move-exception v0

    .line 882
    :try_start_4
    const-string/jumbo v3, "starting OtaDexOptService"

    .line 883
    .line 884
    .line 885
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 886
    .line 887
    .line 888
    goto :goto_3

    .line 889
    :catchall_1
    move-exception v0

    .line 890
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    const-string/jumbo v3, "moveab"

    .line 895
    .line 896
    .line 897
    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 901
    .line 902
    .line 903
    throw v0

    .line 904
    :cond_6
    :goto_4
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    .line 905
    .line 906
    if-eqz v0, :cond_7

    .line 907
    .line 908
    const-string/jumbo v0, "StartArcSystemHealthService"

    .line 909
    .line 910
    .line 911
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 915
    .line 916
    const-string/jumbo v3, "com.android.server.arc.health.ArcSystemHealthService"

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 923
    .line 924
    .line 925
    :cond_7
    const-string/jumbo v0, "StartUserManagerService"

    .line 926
    .line 927
    .line 928
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 932
    .line 933
    const-class v3, Lcom/android/server/pm/UserManagerService$LifeCycle;

    .line 934
    .line 935
    const-string v9, "InitAttributerCache"

    .line 936
    .line 937
    invoke-static {v0, v3, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 941
    .line 942
    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 946
    .line 947
    .line 948
    const-string/jumbo v0, "SetSystemProcess"

    .line 949
    .line 950
    .line 951
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 955
    .line 956
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 957
    .line 958
    .line 959
    :try_start_5
    const-string/jumbo v0, "activity"

    .line 960
    .line 961
    .line 962
    const/16 v9, 0x15

    .line 963
    .line 964
    invoke-static {v0, v3, v4, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 965
    .line 966
    .line 967
    const-string/jumbo v0, "procstats"

    .line 968
    .line 969
    .line 970
    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 971
    .line 972
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 973
    .line 974
    .line 975
    const-string/jumbo v0, "meminfo"

    .line 976
    .line 977
    .line 978
    new-instance v9, Lcom/android/server/am/ActivityManagerService$MemBinder;

    .line 979
    .line 980
    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityManagerService$MemBinder;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 981
    .line 982
    .line 983
    const/4 v10, 0x2

    .line 984
    invoke-static {v0, v9, v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 985
    .line 986
    .line 987
    const-string/jumbo v0, "gfxinfo"

    .line 988
    .line 989
    .line 990
    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    .line 991
    .line 992
    invoke-direct {v9, v10}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    .line 993
    .line 994
    .line 995
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 996
    .line 997
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 998
    .line 999
    .line 1000
    const-string/jumbo v0, "dbinfo"

    .line 1001
    .line 1002
    .line 1003
    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    .line 1004
    .line 1005
    invoke-direct {v9, v5}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    .line 1006
    .line 1007
    .line 1008
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1009
    .line 1010
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1014
    .line 1015
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1016
    .line 1017
    .line 1018
    new-instance v9, Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 1019
    .line 1020
    invoke-direct {v9, v0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 1021
    .line 1022
    .line 1023
    const-string/jumbo v0, "cpuinfo"

    .line 1024
    .line 1025
    .line 1026
    invoke-static {v0, v9, v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1027
    .line 1028
    .line 1029
    const-string/jumbo v0, "permission"

    .line 1030
    .line 1031
    .line 1032
    new-instance v9, Lcom/android/server/am/ActivityManagerService$PermissionController;

    .line 1033
    .line 1034
    invoke-direct {v9}, Landroid/os/IPermissionController$Stub;-><init>()V

    .line 1035
    .line 1036
    .line 1037
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1038
    .line 1039
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1040
    .line 1041
    .line 1042
    const-string/jumbo v0, "processinfo"

    .line 1043
    .line 1044
    .line 1045
    new-instance v9, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;

    .line 1046
    .line 1047
    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1051
    .line 1052
    .line 1053
    const-string/jumbo v0, "cacheinfo"

    .line 1054
    .line 1055
    .line 1056
    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    .line 1057
    .line 1058
    invoke-direct {v9, v4}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    .line 1059
    .line 1060
    .line 1061
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1062
    .line 1063
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1064
    .line 1065
    .line 1066
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1067
    .line 1068
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    const-string/jumbo v9, "android"

    .line 1073
    .line 1074
    .line 1075
    const v10, 0x100400

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v12

    .line 1082
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 1083
    .line 1084
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v9

    .line 1088
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v9

    .line 1092
    invoke-virtual {v0, v12, v9}, Landroid/app/ActivityThread;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 1093
    .line 1094
    .line 1095
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1096
    .line 1097
    .line 1098
    monitor-enter v3
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1099
    :try_start_6
    iget-object v11, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1100
    .line 1101
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1102
    .line 1103
    new-instance v0, Lcom/android/server/am/HostingRecord;

    .line 1104
    .line 1105
    const-string/jumbo v9, "system"

    .line 1106
    .line 1107
    .line 1108
    invoke-direct {v0, v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    const/4 v15, 0x0

    .line 1112
    const/16 v16, 0x0

    .line 1113
    .line 1114
    const/16 v17, 0x0

    .line 1115
    .line 1116
    const/16 v18, 0x0

    .line 1117
    .line 1118
    const/4 v14, 0x0

    .line 1119
    move-object/from16 v19, v0

    .line 1120
    .line 1121
    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 1126
    .line 1127
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1128
    .line 1129
    iput-boolean v4, v9, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 1130
    .line 1131
    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1132
    .line 1133
    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 1134
    .line 1135
    .line 1136
    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 1137
    .line 1138
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1139
    .line 1140
    .line 1141
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1142
    .line 1143
    const/16 v10, -0x384

    .line 1144
    .line 1145
    iput v10, v9, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 1146
    .line 1147
    new-instance v9, Lcom/android/server/am/ApplicationThreadDeferred;

    .line 1148
    .line 1149
    iget-object v10, v3, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 1150
    .line 1151
    invoke-virtual {v10}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v10

    .line 1155
    invoke-direct {v9, v10, v4}, Lcom/android/server/am/ApplicationThreadDeferred;-><init>(Landroid/app/IApplicationThread;Z)V

    .line 1156
    .line 1157
    .line 1158
    iget-object v10, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1159
    .line 1160
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/ProcessRecord;->makeActive(Lcom/android/server/am/ApplicationThreadDeferred;Lcom/android/server/am/ProcessStatsService;)V

    .line 1161
    .line 1162
    .line 1163
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1164
    .line 1165
    invoke-virtual {v9, v4}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1169
    .line 1170
    .line 1171
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1172
    .line 1173
    const/4 v9, 0x0

    .line 1174
    invoke-virtual {v4, v0, v9, v5}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 1178
    .line 1179
    .line 1180
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1181
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1182
    .line 1183
    .line 1184
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1185
    .line 1186
    new-instance v4, Lcom/android/server/am/ActivityManagerService$3;

    .line 1187
    .line 1188
    invoke-direct {v4, v3}, Lcom/android/server/am/ActivityManagerService$3;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1189
    .line 1190
    .line 1191
    const/16 v8, 0x3f

    .line 1192
    .line 1193
    invoke-virtual {v0, v8, v9, v5, v4}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1194
    .line 1195
    .line 1196
    const/16 v0, 0x1a

    .line 1197
    .line 1198
    filled-new-array {v0}, [I

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1203
    .line 1204
    new-instance v8, Lcom/android/server/am/ActivityManagerService$4;

    .line 1205
    .line 1206
    invoke-direct {v8, v3}, Lcom/android/server/am/ActivityManagerService$4;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v4, v0, v8}, Lcom/android/server/appop/AppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1213
    .line 1214
    .line 1215
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1216
    .line 1217
    invoke-virtual {v7, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1218
    .line 1219
    .line 1220
    const-string v0, "InitWatchdog"

    .line 1221
    .line 1222
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    const-string/jumbo v0, "SystemServer"

    .line 1226
    .line 1227
    .line 1228
    const-string v3, "!@Boot_EBS_D: InitWatchdog"

    .line 1229
    .line 1230
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .line 1232
    .line 1233
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1234
    .line 1235
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1236
    .line 1237
    iput-object v3, v6, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1238
    .line 1239
    sput-object v0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 1240
    .line 1241
    new-instance v3, Lcom/android/server/Watchdog$RebootRequestReceiver;

    .line 1242
    .line 1243
    invoke-direct {v3, v6}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    .line 1244
    .line 1245
    .line 1246
    new-instance v4, Landroid/content/IntentFilter;

    .line 1247
    .line 1248
    const-string/jumbo v7, "android.intent.action.REBOOT"

    .line 1249
    .line 1250
    .line 1251
    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    const-string/jumbo v7, "android.permission.REBOOT"

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v0, v3, v4, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1258
    .line 1259
    .line 1260
    iget-object v0, v6, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 1261
    .line 1262
    sget-object v3, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 1263
    .line 1264
    iget-object v4, v6, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1265
    .line 1266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1267
    .line 1268
    .line 1269
    sput-object v3, Lcom/android/server/HeapdumpWatcher;->mContext:Landroid/content/Context;

    .line 1270
    .line 1271
    iput-object v4, v0, Lcom/android/server/HeapdumpWatcher;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1272
    .line 1273
    iget-object v0, v6, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 1274
    .line 1275
    sget-object v3, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 1276
    .line 1277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1278
    .line 1279
    .line 1280
    sput-object v3, Lcom/android/server/FileDescriptorWatcher;->mContext:Landroid/content/Context;

    .line 1281
    .line 1282
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1283
    .line 1284
    .line 1285
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1286
    .line 1287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1288
    .line 1289
    .line 1290
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v0

    .line 1294
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 1299
    .line 1300
    const/4 v4, 0x5

    .line 1301
    const/16 v6, 0xb

    .line 1302
    .line 1303
    if-eqz v3, :cond_8

    .line 1304
    .line 1305
    move v7, v6

    .line 1306
    goto :goto_5

    .line 1307
    :cond_8
    move v7, v4

    .line 1308
    :goto_5
    invoke-static {v0, v7}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 1309
    .line 1310
    .line 1311
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-eqz v3, :cond_9

    .line 1320
    .line 1321
    move v7, v6

    .line 1322
    goto :goto_6

    .line 1323
    :cond_9
    move v7, v4

    .line 1324
    :goto_6
    invoke-static {v0, v7}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 1325
    .line 1326
    .line 1327
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 1328
    .line 1329
    const-class v7, Lcom/android/server/wm/SurfaceAnimationThread;

    .line 1330
    .line 1331
    monitor-enter v7

    .line 1332
    :try_start_8
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->ensureThreadLocked()V

    .line 1333
    .line 1334
    .line 1335
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 1336
    .line 1337
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1338
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    .line 1339
    .line 1340
    .line 1341
    move-result v0

    .line 1342
    if-eqz v3, :cond_a

    .line 1343
    .line 1344
    move v4, v6

    .line 1345
    :cond_a
    invoke-static {v0, v4}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 1346
    .line 1347
    .line 1348
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    .line 1349
    .line 1350
    if-eqz v0, :cond_b

    .line 1351
    .line 1352
    new-instance v0, Landroid/os/Handler;

    .line 1353
    .line 1354
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1355
    .line 1356
    .line 1357
    new-instance v3, Lcom/android/server/display/DisplayManagerService$5;

    .line 1358
    .line 1359
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1360
    .line 1361
    .line 1362
    const-wide/16 v6, 0x2710

    .line 1363
    .line 1364
    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1365
    .line 1366
    .line 1367
    :cond_b
    const-string/jumbo v0, "StartOverlayManagerService"

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1374
    .line 1375
    new-instance v3, Lcom/android/server/om/OverlayManagerService;

    .line 1376
    .line 1377
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1378
    .line 1379
    invoke-direct {v3, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1386
    .line 1387
    .line 1388
    const-string/jumbo v0, "StartResourcesManagerService"

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1392
    .line 1393
    .line 1394
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    .line 1395
    .line 1396
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1397
    .line 1398
    invoke-direct {v0, v3}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1399
    .line 1400
    .line 1401
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1402
    .line 1403
    iput-object v3, v0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1404
    .line 1405
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1406
    .line 1407
    invoke-virtual {v3, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1411
    .line 1412
    .line 1413
    const-string/jumbo v0, "StartSensorPrivacyService"

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1417
    .line 1418
    .line 1419
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1420
    .line 1421
    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 1422
    .line 1423
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1424
    .line 1425
    invoke-direct {v3, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1432
    .line 1433
    .line 1434
    const-string/jumbo v0, "PACMService"

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1438
    .line 1439
    .line 1440
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1441
    .line 1442
    const-class v3, Lcom/android/server/PACMService;

    .line 1443
    .line 1444
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1448
    .line 1449
    .line 1450
    const-string/jumbo v0, "persist.sys.displayinset.top"

    .line 1451
    .line 1452
    .line 1453
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1454
    .line 1455
    .line 1456
    move-result v0

    .line 1457
    if-lez v0, :cond_c

    .line 1458
    .line 1459
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1460
    .line 1461
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v3

    .line 1465
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 1466
    .line 1467
    .line 1468
    move-result v4

    .line 1469
    const-string/jumbo v8, "android"

    .line 1470
    .line 1471
    .line 1472
    const-wide/16 v6, 0x400

    .line 1473
    .line 1474
    const/4 v5, 0x0

    .line 1475
    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v3

    .line 1483
    invoke-virtual {v3, v0}, Landroid/app/ActivityThread;->handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 1484
    .line 1485
    .line 1486
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1487
    .line 1488
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v0

    .line 1492
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1493
    .line 1494
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1495
    .line 1496
    .line 1497
    :cond_c
    const-string/jumbo v0, "StartSensorService"

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1504
    .line 1505
    const-class v1, Lcom/android/server/sensors/SensorService;

    .line 1506
    .line 1507
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1514
    .line 1515
    .line 1516
    return-void

    .line 1517
    :catchall_2
    move-exception v0

    .line 1518
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1519
    throw v0

    .line 1520
    :catchall_3
    move-exception v0

    .line 1521
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1522
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1523
    .line 1524
    .line 1525
    throw v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_0

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1528
    .line 1529
    const-string/jumbo v2, "Unable to find android system package"

    .line 1530
    .line 1531
    .line 1532
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1533
    .line 1534
    .line 1535
    throw v1

    .line 1536
    :catchall_4
    move-exception v0

    .line 1537
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v1

    .line 1541
    const-string/jumbo v2, "packagemanagermain"

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1545
    .line 1546
    .line 1547
    throw v0

    .line 1548
    :catchall_5
    move-exception v0

    .line 1549
    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1550
    throw v0

    .line 1551
    :catchall_6
    move-exception v0

    .line 1552
    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1553
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1554
    .line 1555
    .line 1556
    throw v0
.end method

.method public final startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "content_capture"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "service_explicitly_enabled"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "SystemServer"

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string/jumbo v2, "default"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v2, "ContentCaptureService explicitly enabled by DeviceConfig"

    .line 32
    .line 33
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p0, "ContentCaptureService explicitly disabled by DeviceConfig"

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-nez v0, :cond_3

    .line 45
    .line 46
    const v0, 0x1040325

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    const-string p0, "ContentCaptureService disabled because resource is not overlaid"

    .line 56
    .line 57
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    const v0, 0x1040326

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    const-string p1, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    .line 75
    .line 76
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_3
    const-string/jumbo p1, "StartContentCaptureService"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 86
    .line 87
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 90
    .line 91
    .line 92
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 103
    .line 104
    if-eqz p0, :cond_4

    .line 105
    .line 106
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mContentCaptureService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 107
    .line 108
    :cond_4
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "startCoreServices"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "persist.sys.enable_isrb"

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo v0, "StartISRBService"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 24
    .line 25
    const-class v1, Lcom/android/server/isrb/IsrbManagerService;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 31
    .line 32
    .line 33
    :cond_0
    const-string/jumbo v0, "StartSystemConfigService"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 40
    .line 41
    const-class v1, Lcom/android/server/SystemConfigService;

    .line 42
    .line 43
    const-string/jumbo v2, "StartBatteryService"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 50
    .line 51
    const-class v1, Lcom/android/server/BatteryService;

    .line 52
    .line 53
    const-string/jumbo v2, "StartUsageService"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 60
    .line 61
    const-class v1, Lcom/android/server/usage/UsageStatsService;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 67
    .line 68
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 75
    .line 76
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 79
    .line 80
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 81
    .line 82
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 83
    .line 84
    .line 85
    monitor-enter v2

    .line 86
    :try_start_0
    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 87
    .line 88
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 96
    .line 97
    const-string/jumbo v1, "android.software.webview"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    const-string/jumbo v0, "StartWebViewUpdateService"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 113
    .line 114
    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 125
    .line 126
    .line 127
    :cond_1
    const-string/jumbo v0, "StartCachedDeviceStateService"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 134
    .line 135
    const-class v1, Lcom/android/server/CachedDeviceStateService;

    .line 136
    .line 137
    const-string/jumbo v2, "StartBinderCallsStatsService"

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 144
    .line 145
    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    .line 146
    .line 147
    const-string/jumbo v2, "StartLooperStatsService"

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 154
    .line 155
    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    .line 156
    .line 157
    const-string/jumbo v2, "StartRollbackManagerService"

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 164
    .line 165
    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    .line 166
    .line 167
    const-string/jumbo v2, "StartNativeTombstoneManagerService"

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 174
    .line 175
    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    .line 176
    .line 177
    const-string/jumbo v2, "StartBugreportManagerService"

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 184
    .line 185
    const-class v1, Lcom/android/server/os/BugreportManagerService;

    .line 186
    .line 187
    const-string v2, "GpuService"

    .line 188
    .line 189
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 193
    .line 194
    const-class v1, Lcom/android/server/gpu/GpuService;

    .line 195
    .line 196
    const-string/jumbo v2, "StartRemoteProvisioningService"

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 203
    .line 204
    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 210
    .line 211
    .line 212
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 213
    .line 214
    if-nez v0, :cond_2

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_2
    const-string v0, "CpuMonitorService"

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 223
    .line 224
    const-class v0, Lcom/android/server/cpu/CpuMonitorService;

    .line 225
    .line 226
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 230
    .line 231
    .line 232
    :goto_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :catchall_0
    move-exception p0

    .line 237
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 239
    .line 240
    .line 241
    throw p0
.end method

.method public final startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "SystemServer"

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v1, "DualAppManagerService"

    .line 5
    .line 6
    invoke-virtual {p2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "startDualAppManagerService | add Service : startDualAppManagerService"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string/jumbo p0, "startDualAppManagerService | context is null"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 38
    .line 39
    const-string/jumbo p0, "dual_app"

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_0
    :try_start_2
    const-string/jumbo p1, "startDualAppManagerService | Fail to start service"

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8
    .line 9
    const-string/jumbo v0, "com.android.server.ondeviceintelligence.OnDeviceIntelligenceManagerService"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    const-string/jumbo v5, "Starting custom IMMS: "

    .line 7
    .line 8
    .line 9
    const-string v6, "HcmManagerService ApmSwitch = "

    .line 10
    .line 11
    const-string/jumbo v0, "startOtherServices"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 20
    .line 21
    .line 22
    iget-object v7, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string/jumbo v0, "config.disable_systemtextclassifier"

    .line 25
    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    const-string/jumbo v0, "config.disable_networktime"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    const-string/jumbo v0, "config.disable_cameraservice"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string/jumbo v12, "android.hardware.type.pc"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    invoke-static {v7}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureWatch(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string/jumbo v14, "org.chromium.arc"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string/jumbo v15, "android.software.leanback"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    invoke-static {v7}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureAutomotive(Landroid/content/Context;)Z

    .line 84
    .line 85
    .line 86
    move-result v16

    .line 87
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string/jumbo v3, "android.hardware.vr.high_performance"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const-string/jumbo v0, "factory"

    .line 99
    .line 100
    .line 101
    const-string/jumbo v18, "ro.factory.factory_binary"

    .line 102
    .line 103
    .line 104
    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v24

    .line 112
    const-string/jumbo v0, "lazy_service"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Landroid/os/ServiceManager;

    .line 119
    .line 120
    invoke-direct {v0}, Landroid/os/ServiceManager;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v0, v8}, Landroid/os/ServiceManager;->initLazyServiceManager(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 129
    .line 130
    .line 131
    :try_start_0
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 132
    .line 133
    invoke-direct {v0, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 134
    .line 135
    .line 136
    const-string/jumbo v8, "SecondaryZygotePreload"

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, v1, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 144
    .line 145
    const-string/jumbo v0, "Secure AT Service"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6e

    .line 149
    .line 150
    .line 151
    :try_start_1
    const-string/jumbo v0, "SatsService"

    .line 152
    .line 153
    .line 154
    new-instance v8, Lcom/android/server/SatsService;

    .line 155
    .line 156
    invoke-direct {v8, v7}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catchall_0
    :try_start_2
    const-string/jumbo v0, "SystemServer"

    .line 164
    .line 165
    .line 166
    const-string v8, "Failed to add SATService."

    .line 167
    .line 168
    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    :goto_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->markDisabled()V

    .line 175
    .line 176
    .line 177
    const-string/jumbo v0, "SystemServer"

    .line 178
    .line 179
    .line 180
    const-string/jumbo v8, "MAINLINE_API_LEVEL: 33"

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    const-string v0, "33"

    .line 187
    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    const/16 v8, 0x22

    .line 193
    .line 194
    if-lt v0, v8, :cond_0

    .line 195
    .line 196
    const-string/jumbo v0, "RealTimeTokenService: Real Time Token Service"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6e

    .line 200
    .line 201
    .line 202
    :try_start_3
    const-string/jumbo v0, "RealTimeTokenService"

    .line 203
    .line 204
    .line 205
    new-instance v8, Lcom/android/server/RealTimeTokenService;

    .line 206
    .line 207
    invoke-direct {v8, v7}, Lcom/android/server/RealTimeTokenService;-><init>(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :catchall_1
    :try_start_4
    const-string/jumbo v0, "SystemServer"

    .line 215
    .line 216
    .line 217
    const-string v8, "Failed to add RealTimeTokenService"

    .line 218
    .line 219
    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :goto_1
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_0
    const-string/jumbo v0, "SystemServer"

    .line 227
    .line 228
    .line 229
    const-string/jumbo v8, "RealTimeTokenService not supported MAINLINE_API_LEVEL < 34"

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :goto_2
    const-string/jumbo v0, "StartKeyAttestationApplicationIdProviderService"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string/jumbo v0, "sec_key_att_app_id_provider"

    .line 242
    .line 243
    .line 244
    new-instance v8, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    .line 245
    .line 246
    invoke-direct {v8, v7}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 253
    .line 254
    .line 255
    const-string/jumbo v0, "StartSpqrService"

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6e

    .line 259
    .line 260
    .line 261
    :try_start_5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 262
    .line 263
    const-class v8, Lcom/android/server/SpqrService;

    .line 264
    .line 265
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Lcom/android/server/SpqrService;

    .line 270
    .line 271
    const-class v8, Lcom/android/server/SpqrService;

    .line 272
    .line 273
    invoke-static {v8, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6e

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :try_start_6
    const-string/jumbo v8, "SystemServer"

    .line 279
    .line 280
    .line 281
    const-string v4, "Failure starting Spqr Service"

    .line 282
    .line 283
    invoke-static {v8, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .line 285
    .line 286
    :goto_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 287
    .line 288
    .line 289
    const-string/jumbo v0, "StartKeyChainSystemService"

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 296
    .line 297
    const-class v4, Lcom/android/server/security/KeyChainSystemService;

    .line 298
    .line 299
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 303
    .line 304
    .line 305
    const-string/jumbo v0, "StartBinaryTransparencyService"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 312
    .line 313
    const-class v4, Lcom/android/server/BinaryTransparencyService;

    .line 314
    .line 315
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 319
    .line 320
    .line 321
    const-string/jumbo v0, "StartSchedulingPolicyService"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string/jumbo v0, "scheduling_policy"

    .line 328
    .line 329
    .line 330
    new-instance v4, Lcom/android/server/os/SchedulingPolicyService;

    .line 331
    .line 332
    invoke-direct {v4}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6e

    .line 339
    .line 340
    .line 341
    :try_start_7
    const-string/jumbo v0, "SEAMS"

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    const-string/jumbo v0, "SEAMService"

    .line 348
    .line 349
    .line 350
    new-instance v4, Lcom/android/server/SEAMService;

    .line 351
    .line 352
    invoke-direct {v4, v7}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 356
    .line 357
    .line 358
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6e

    .line 359
    .line 360
    .line 361
    goto :goto_5

    .line 362
    :catchall_2
    move-exception v0

    .line 363
    :try_start_9
    const-string/jumbo v4, "SystemServer"

    .line 364
    .line 365
    .line 366
    const-string v8, "Failure starting SE Android Manager Service"

    .line 367
    .line 368
    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6d

    .line 369
    .line 370
    .line 371
    goto :goto_4

    .line 372
    :goto_5
    :try_start_a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 373
    .line 374
    const-string/jumbo v4, "android.hardware.microphone"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_1

    .line 382
    .line 383
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 384
    .line 385
    const-string/jumbo v4, "android.software.telecom"

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-nez v0, :cond_1

    .line 393
    .line 394
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 395
    .line 396
    const-string/jumbo v4, "android.hardware.telephony"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_2

    .line 404
    .line 405
    :cond_1
    const-string/jumbo v0, "StartTelecomLoaderService"

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 412
    .line 413
    const-class v4, Lcom/android/server/telecom/TelecomLoaderService;

    .line 414
    .line 415
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 419
    .line 420
    .line 421
    :cond_2
    const-string/jumbo v0, "StartTelephonyRegistry"

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    new-instance v4, Lcom/android/server/TelephonyRegistry;

    .line 428
    .line 429
    new-instance v0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 430
    .line 431
    invoke-direct {v0}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-direct {v4, v7, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V

    .line 435
    .line 436
    .line 437
    const-string/jumbo v0, "telephony.registry"

    .line 438
    .line 439
    .line 440
    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 444
    .line 445
    .line 446
    const-string/jumbo v0, "StartSemTelephonyRegistry"

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    new-instance v8, Lcom/android/server/SemTelephonyRegistry;

    .line 453
    .line 454
    new-instance v0, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;

    .line 455
    .line 456
    invoke-direct {v0}, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-direct {v8, v7, v0}, Lcom/android/server/SemTelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;)V

    .line 460
    .line 461
    .line 462
    const-string/jumbo v0, "sem.telephony.registry"

    .line 463
    .line 464
    .line 465
    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 469
    .line 470
    .line 471
    const-string/jumbo v0, "StartEntropyMixer"

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    new-instance v0, Lcom/android/server/EntropyMixer;

    .line 478
    .line 479
    invoke-direct {v0, v7}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 483
    .line 484
    .line 485
    const-string/jumbo v0, "factory"

    .line 486
    .line 487
    .line 488
    const-string/jumbo v20, "ro.factory.factory_binary"

    .line 489
    .line 490
    .line 491
    move/from16 v21, v3

    .line 492
    .line 493
    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6e

    .line 501
    if-nez v0, :cond_3

    .line 502
    .line 503
    :try_start_b
    const-string/jumbo v0, "UCM Policy Service"

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    new-instance v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 510
    .line 511
    invoke-direct {v0, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    .line 512
    .line 513
    .line 514
    const-string/jumbo v3, "knox_ucsm_policy"

    .line 515
    .line 516
    .line 517
    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 518
    .line 519
    .line 520
    const-string/jumbo v3, "knox_ucsm_policy"

    .line 521
    .line 522
    .line 523
    invoke-static {v3, v0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 524
    .line 525
    .line 526
    :try_start_c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6e

    .line 527
    .line 528
    .line 529
    move-object/from16 v20, v4

    .line 530
    .line 531
    goto :goto_6

    .line 532
    :catchall_3
    move-exception v0

    .line 533
    goto :goto_a

    .line 534
    :catch_1
    move-exception v0

    .line 535
    :try_start_d
    const-string/jumbo v3, "SystemServer"

    .line 536
    .line 537
    .line 538
    move-object/from16 v20, v4

    .line 539
    .line 540
    const-string v4, "Failure adding UniversalCredentialManagerService"

    .line 541
    .line 542
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 543
    .line 544
    .line 545
    :try_start_e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6e

    .line 546
    .line 547
    .line 548
    :goto_6
    :try_start_f
    const-string v0, "CredentialManagerService Service"

    .line 549
    .line 550
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 554
    .line 555
    invoke-direct {v0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    .line 556
    .line 557
    .line 558
    const-string/jumbo v3, "com.samsung.ucs.ucsservice"

    .line 559
    .line 560
    .line 561
    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 562
    .line 563
    .line 564
    const-string/jumbo v3, "credentialManagerServiceReady"

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 568
    .line 569
    .line 570
    :try_start_10
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 571
    .line 572
    .line 573
    goto :goto_7

    .line 574
    :catchall_4
    move-exception v0

    .line 575
    goto :goto_9

    .line 576
    :catch_2
    move-exception v0

    .line 577
    :try_start_11
    const-string/jumbo v3, "SystemServer"

    .line 578
    .line 579
    .line 580
    const-string v4, "Failed to call UCMService systemReady"

    .line 581
    .line 582
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .line 584
    .line 585
    :goto_7
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 586
    .line 587
    .line 588
    :goto_8
    :try_start_12
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6e

    .line 589
    .line 590
    .line 591
    goto :goto_b

    .line 592
    :catch_3
    move-exception v0

    .line 593
    :try_start_13
    const-string/jumbo v3, "SystemServer"

    .line 594
    .line 595
    .line 596
    const-string v4, "Failure adding CredentialManagerService"

    .line 597
    .line 598
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 599
    .line 600
    .line 601
    goto :goto_8

    .line 602
    :goto_9
    :try_start_14
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 603
    .line 604
    .line 605
    throw v0

    .line 606
    :goto_a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 607
    .line 608
    .line 609
    throw v0

    .line 610
    :cond_3
    move-object/from16 v20, v4

    .line 611
    .line 612
    :goto_b
    const-string/jumbo v0, "StartPersonaManager"

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6e

    .line 616
    .line 617
    .line 618
    :try_start_15
    const-string/jumbo v0, "SystemServer"

    .line 619
    .line 620
    .line 621
    const-string/jumbo v4, "Persona Service"

    .line 622
    .line 623
    .line 624
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 628
    .line 629
    const-class v4, Lcom/android/server/pm/PersonaManagerService;

    .line 630
    .line 631
    monitor-enter v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 632
    :try_start_16
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 633
    .line 634
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 635
    :try_start_17
    const-string/jumbo v0, "persona"

    .line 636
    .line 637
    .line 638
    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 639
    .line 640
    .line 641
    goto :goto_e

    .line 642
    :catchall_5
    move-exception v0

    .line 643
    goto :goto_d

    .line 644
    :catchall_6
    move-exception v0

    .line 645
    :try_start_18
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 646
    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 647
    :goto_c
    const/4 v3, 0x0

    .line 648
    goto :goto_d

    .line 649
    :catchall_7
    move-exception v0

    .line 650
    goto :goto_c

    .line 651
    :goto_d
    :try_start_1a
    const-string/jumbo v4, "SystemServer"

    .line 652
    .line 653
    .line 654
    move-object/from16 v23, v3

    .line 655
    .line 656
    const-string v3, "Failure starting Persona Manager Service"

    .line 657
    .line 658
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6e

    .line 659
    .line 660
    .line 661
    move-object/from16 v3, v23

    .line 662
    .line 663
    :goto_e
    :try_start_1b
    const-string/jumbo v0, "SystemServer"

    .line 664
    .line 665
    .line 666
    const-string v4, "KnoxMUMContainerPolicy Service"

    .line 667
    .line 668
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    new-instance v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 672
    .line 673
    invoke-direct {v4, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    .line 674
    .line 675
    .line 676
    :try_start_1c
    const-string/jumbo v0, "mum_container_policy"

    .line 677
    .line 678
    .line 679
    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 680
    .line 681
    .line 682
    const-string/jumbo v0, "mum_container_policy"

    .line 683
    .line 684
    .line 685
    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 686
    .line 687
    .line 688
    move-object/from16 v23, v3

    .line 689
    .line 690
    goto :goto_10

    .line 691
    :catchall_8
    move-exception v0

    .line 692
    move-object/from16 v23, v3

    .line 693
    .line 694
    goto :goto_f

    .line 695
    :catchall_9
    move-exception v0

    .line 696
    move-object/from16 v23, v3

    .line 697
    .line 698
    const/4 v4, 0x0

    .line 699
    :goto_f
    :try_start_1d
    const-string/jumbo v3, "SystemServer"

    .line 700
    .line 701
    .line 702
    move-object/from16 v25, v4

    .line 703
    .line 704
    const-string v4, "Failure starting KnoxMUMContainerPolicy Service"

    .line 705
    .line 706
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    .line 708
    .line 709
    move-object/from16 v4, v25

    .line 710
    .line 711
    :goto_10
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 712
    .line 713
    .line 714
    const-string/jumbo v0, "SystemServer"

    .line 715
    .line 716
    .line 717
    const-string/jumbo v3, "calling startRCPService - 1"

    .line 718
    .line 719
    .line 720
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    const/4 v3, 0x0

    .line 724
    invoke-static {v7, v2, v3}, Lcom/android/server/SystemServer;->startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    iput-object v0, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 735
    .line 736
    const-string/jumbo v0, "StartAccountManagerService"

    .line 737
    .line 738
    .line 739
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 743
    .line 744
    const-class v3, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    .line 745
    .line 746
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 750
    .line 751
    .line 752
    const-string/jumbo v0, "StartContentService"

    .line 753
    .line 754
    .line 755
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 759
    .line 760
    const-class v3, Lcom/android/server/content/ContentService$Lifecycle;

    .line 761
    .line 762
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 766
    .line 767
    .line 768
    const-string v0, "InstallSystemProviders"

    .line 769
    .line 770
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 774
    .line 775
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 780
    .line 781
    .line 782
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 783
    .line 784
    const-string/jumbo v3, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    .line 785
    .line 786
    .line 787
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 788
    .line 789
    .line 790
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 794
    .line 795
    .line 796
    const-string/jumbo v0, "StartDropBoxManager"

    .line 797
    .line 798
    .line 799
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 803
    .line 804
    const-class v3, Lcom/android/server/DropBoxManagerService;

    .line 805
    .line 806
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 810
    .line 811
    .line 812
    const-string/jumbo v0, "StartEnhancedConfirmationService"

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 819
    .line 820
    const-string/jumbo v3, "com.android.ecm.EnhancedConfirmationService"

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 827
    .line 828
    .line 829
    const-string/jumbo v0, "StartHintManager"

    .line 830
    .line 831
    .line 832
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 836
    .line 837
    const-class v3, Lcom/android/server/power/hint/HintManagerService;

    .line 838
    .line 839
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 843
    .line 844
    .line 845
    const-string/jumbo v0, "StartRoleManagerService"

    .line 846
    .line 847
    .line 848
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    const-class v0, Lcom/android/server/role/RoleServicePlatformHelper;

    .line 852
    .line 853
    new-instance v3, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    .line 854
    .line 855
    move-object/from16 v25, v4

    .line 856
    .line 857
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 858
    .line 859
    invoke-direct {v3, v4}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    .line 860
    .line 861
    .line 862
    invoke-static {v0, v3}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 866
    .line 867
    const-string/jumbo v3, "com.android.role.RoleService"

    .line 868
    .line 869
    .line 870
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 874
    .line 875
    .line 876
    sget-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    .line 877
    .line 878
    if-eqz v0, :cond_4

    .line 879
    .line 880
    const-string/jumbo v0, "SemUnionMainService"

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 887
    .line 888
    const-class v3, Lcom/android/server/sepunion/SemUnionMainService;

    .line 889
    .line 890
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 894
    .line 895
    .line 896
    :cond_4
    const-string/jumbo v0, "StartSupervisionService"

    .line 897
    .line 898
    .line 899
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 903
    .line 904
    const-class v3, Lcom/android/server/supervision/SupervisionService$Lifecycle;

    .line 905
    .line 906
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 910
    .line 911
    .line 912
    if-nez v15, :cond_5

    .line 913
    .line 914
    if-nez v12, :cond_5

    .line 915
    .line 916
    const-string/jumbo v0, "StartVibratorManagerService"

    .line 917
    .line 918
    .line 919
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 923
    .line 924
    const-class v3, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    .line 925
    .line 926
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 927
    .line 928
    .line 929
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 930
    .line 931
    .line 932
    :cond_5
    const-string/jumbo v0, "StartDynamicSystemService"

    .line 933
    .line 934
    .line 935
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    new-instance v0, Lcom/android/server/DynamicSystemService;

    .line 939
    .line 940
    invoke-direct {v0, v7}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V

    .line 941
    .line 942
    .line 943
    const-string/jumbo v3, "dynamic_system"

    .line 944
    .line 945
    .line 946
    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    const-string/jumbo v3, "android.hardware.consumerir"

    .line 957
    .line 958
    .line 959
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    if-eqz v0, :cond_6

    .line 964
    .line 965
    const-string/jumbo v0, "StartConsumerIrService"

    .line 966
    .line 967
    .line 968
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    new-instance v0, Lcom/android/server/ConsumerIrService;

    .line 972
    .line 973
    invoke-direct {v0, v7}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    .line 974
    .line 975
    .line 976
    const-string/jumbo v3, "consumer_ir"

    .line 977
    .line 978
    .line 979
    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 980
    .line 981
    .line 982
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6e

    .line 983
    .line 984
    .line 985
    :cond_6
    :try_start_1e
    const-string/jumbo v0, "SSRM Service"

    .line 986
    .line 987
    .line 988
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 992
    .line 993
    const-string/jumbo v3, "com.android.server.ssrm.CustomFrequencyManagerService$Lifecycle"

    .line 994
    .line 995
    .line 996
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 997
    .line 998
    .line 999
    :goto_11
    :try_start_1f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6e

    .line 1000
    .line 1001
    .line 1002
    goto :goto_12

    .line 1003
    :catchall_a
    move-exception v0

    .line 1004
    goto/16 :goto_a6

    .line 1005
    .line 1006
    :catch_4
    move-exception v0

    .line 1007
    :try_start_20
    const-string/jumbo v3, "SystemServer"

    .line 1008
    .line 1009
    .line 1010
    const-string/jumbo v4, "ssrm.jar not found"

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 1017
    .line 1018
    .line 1019
    goto :goto_11

    .line 1020
    :goto_12
    :try_start_21
    const-string/jumbo v0, "StartAlarmManagerService"

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1027
    .line 1028
    const-class v3, Lcom/android/server/alarm/AlarmManagerService;

    .line 1029
    .line 1030
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1034
    .line 1035
    .line 1036
    const-string/jumbo v0, "StartInputManagerService"

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1043
    .line 1044
    const-class v3, Lcom/android/server/input/InputManagerService$Lifecycle;

    .line 1045
    .line 1046
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    check-cast v0, Lcom/android/server/input/InputManagerService$Lifecycle;

    .line 1051
    .line 1052
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$Lifecycle;->getService()Lcom/android/server/input/InputManagerService;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1057
    .line 1058
    .line 1059
    const-string v0, "DeviceStateManagerService"

    .line 1060
    .line 1061
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1065
    .line 1066
    const-class v4, Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 1067
    .line 1068
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1072
    .line 1073
    .line 1074
    if-nez v11, :cond_7

    .line 1075
    .line 1076
    const-string/jumbo v0, "StartCameraServiceProxy"

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1083
    .line 1084
    const-class v4, Lcom/android/server/camera/CameraServiceProxy;

    .line 1085
    .line 1086
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1090
    .line 1091
    .line 1092
    const-string/jumbo v0, "StartCameraServiceWorker"

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1099
    .line 1100
    const-class v4, Lcom/samsung/android/camera/CameraServiceWorker;

    .line 1101
    .line 1102
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1106
    .line 1107
    .line 1108
    :cond_7
    const-string/jumbo v0, "powerSolutionManagerService"

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6e

    .line 1112
    .line 1113
    .line 1114
    :try_start_22
    const-string/jumbo v0, "SystemServer"

    .line 1115
    .line 1116
    .line 1117
    const-string/jumbo v4, "powerSolutionManagerService"

    .line 1118
    .line 1119
    .line 1120
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    .line 1122
    .line 1123
    const-string/jumbo v0, "com.samsung.android.powerSolution.powerSolution"

    .line 1124
    .line 1125
    .line 1126
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    const/4 v4, 0x1

    .line 1131
    new-array v11, v4, [Ljava/lang/Class;

    .line 1132
    .line 1133
    const-class v4, Landroid/content/Context;

    .line 1134
    .line 1135
    const/16 v19, 0x0

    .line 1136
    .line 1137
    aput-object v4, v11, v19

    .line 1138
    .line 1139
    invoke-virtual {v0, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v4

    .line 1147
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    check-cast v0, Landroid/os/IBinder;

    .line 1152
    .line 1153
    const-string/jumbo v4, "PowerSolution_Framework_service"

    .line 1154
    .line 1155
    .line 1156
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 1157
    .line 1158
    .line 1159
    goto :goto_13

    .line 1160
    :catchall_b
    move-exception v0

    .line 1161
    :try_start_23
    const-string v4, "Failed To Start powerSolutionManagerService Service "

    .line 1162
    .line 1163
    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1164
    .line 1165
    .line 1166
    :goto_13
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1167
    .line 1168
    .line 1169
    const-string/jumbo v0, "StartWindowManagerService"

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    const-string/jumbo v0, "SystemServer"

    .line 1176
    .line 1177
    .line 1178
    const-string v4, "!@Boot_EBS_F: Start WindowManagerService"

    .line 1179
    .line 1180
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    .line 1182
    .line 1183
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1184
    .line 1185
    const/16 v4, 0xc8

    .line 1186
    .line 1187
    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1188
    .line 1189
    .line 1190
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1191
    .line 1192
    const/16 v18, 0x1

    .line 1193
    .line 1194
    xor-int/lit8 v0, v0, 0x1

    .line 1195
    .line 1196
    new-instance v4, Lcom/android/server/policy/PhoneWindowManager;

    .line 1197
    .line 1198
    invoke-direct {v4}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 1199
    .line 1200
    .line 1201
    iget-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1202
    .line 1203
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1204
    .line 1205
    invoke-static {v7, v3, v0, v4, v11}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v4

    .line 1209
    const-string/jumbo v0, "window"

    .line 1210
    .line 1211
    .line 1212
    const/16 v11, 0x13

    .line 1213
    .line 1214
    move-object/from16 v26, v8

    .line 1215
    .line 1216
    const/4 v8, 0x0

    .line 1217
    invoke-static {v0, v4, v8, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1221
    .line 1222
    .line 1223
    const-string/jumbo v0, "SetWindowManagerService"

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1227
    .line 1228
    .line 1229
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1230
    .line 1231
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1235
    .line 1236
    .line 1237
    const-string/jumbo v0, "WindowManagerServiceOnInitReady"

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1247
    .line 1248
    .line 1249
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 1250
    .line 1251
    const/4 v8, 0x2

    .line 1252
    invoke-direct {v0, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1253
    .line 1254
    .line 1255
    const-string/jumbo v8, "StartISensorManagerService"

    .line 1256
    .line 1257
    .line 1258
    invoke-static {v0, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1259
    .line 1260
    .line 1261
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 1262
    .line 1263
    const/4 v8, 0x3

    .line 1264
    invoke-direct {v0, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1265
    .line 1266
    .line 1267
    const-string/jumbo v8, "StartHidlServices"

    .line 1268
    .line 1269
    .line 1270
    invoke-static {v0, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1271
    .line 1272
    .line 1273
    if-nez v13, :cond_8

    .line 1274
    .line 1275
    if-eqz v21, :cond_8

    .line 1276
    .line 1277
    const-string/jumbo v0, "StartVrManagerService"

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1284
    .line 1285
    const-class v8, Lcom/android/server/vr/VrManagerService;

    .line 1286
    .line 1287
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1291
    .line 1292
    .line 1293
    :cond_8
    const-string/jumbo v0, "StartInputManager"

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1310
    .line 1311
    .line 1312
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    .line 1313
    .line 1314
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1318
    .line 1319
    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1323
    .line 1324
    .line 1325
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 1326
    .line 1327
    const/4 v8, 0x1

    .line 1328
    if-ne v0, v8, :cond_9

    .line 1329
    .line 1330
    const-string/jumbo v0, "SystemServer"

    .line 1331
    .line 1332
    .line 1333
    const-string/jumbo v8, "No Bluetooth Service (factory test)"

    .line 1334
    .line 1335
    .line 1336
    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    .line 1338
    .line 1339
    goto :goto_14

    .line 1340
    :cond_9
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v0

    .line 1344
    const-string/jumbo v8, "android.hardware.bluetooth"

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v0

    .line 1351
    if-nez v0, :cond_a

    .line 1352
    .line 1353
    const-string/jumbo v0, "SystemServer"

    .line 1354
    .line 1355
    .line 1356
    const-string/jumbo v8, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    .line 1357
    .line 1358
    .line 1359
    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    .line 1361
    .line 1362
    goto :goto_14

    .line 1363
    :cond_a
    const-string/jumbo v0, "StartBluetoothService"

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1370
    .line 1371
    const-string/jumbo v8, "com.android.server.bluetooth.BluetoothService"

    .line 1372
    .line 1373
    .line 1374
    const-string v11, "/apex/com.android.bt/javalib/service-bluetooth.jar"

    .line 1375
    .line 1376
    invoke-virtual {v0, v8, v11}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1380
    .line 1381
    .line 1382
    :goto_14
    const-string/jumbo v0, "StartMultiControlManagerService"

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1389
    .line 1390
    const-class v8, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;

    .line 1391
    .line 1392
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1396
    .line 1397
    .line 1398
    const-string/jumbo v0, "SystemServer"

    .line 1399
    .line 1400
    .line 1401
    const-string v8, "Hqm Service"

    .line 1402
    .line 1403
    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6e

    .line 1404
    .line 1405
    .line 1406
    :try_start_24
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 1407
    .line 1408
    const-string v8, "/system/framework/hqm.jar"

    .line 1409
    .line 1410
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v11

    .line 1414
    invoke-direct {v0, v8, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1415
    .line 1416
    .line 1417
    const-string/jumbo v8, "com.samsung.android.hqm.HqmManagerService"

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v0, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    const/4 v8, 0x1

    .line 1425
    new-array v11, v8, [Ljava/lang/Class;

    .line 1426
    .line 1427
    const-class v8, Landroid/content/Context;

    .line 1428
    .line 1429
    const/16 v19, 0x0

    .line 1430
    .line 1431
    aput-object v8, v11, v19

    .line 1432
    .line 1433
    invoke-virtual {v0, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v0

    .line 1437
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v8

    .line 1441
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v0

    .line 1445
    check-cast v0, Landroid/os/IBinder;

    .line 1446
    .line 1447
    const-string v8, "HqmManagerService"

    .line 1448
    .line 1449
    invoke-static {v8, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_5
    .catchall {:try_start_24 .. :try_end_24} :catchall_6e

    .line 1450
    .line 1451
    .line 1452
    goto :goto_15

    .line 1453
    :catch_5
    move-exception v0

    .line 1454
    :try_start_25
    const-string/jumbo v8, "SystemServer"

    .line 1455
    .line 1456
    .line 1457
    const-string/jumbo v11, "hqm.jar not found"

    .line 1458
    .line 1459
    .line 1460
    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1464
    .line 1465
    .line 1466
    :goto_15
    const-string v0, "0"

    .line 1467
    .line 1468
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v8

    .line 1472
    const-string/jumbo v11, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v8, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v8

    .line 1479
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1480
    .line 1481
    .line 1482
    move-result v0

    .line 1483
    if-nez v0, :cond_c

    .line 1484
    .line 1485
    const-string v0, "HcmManagerService"

    .line 1486
    .line 1487
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6e

    .line 1488
    .line 1489
    .line 1490
    :try_start_26
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v0

    .line 1494
    const-string/jumbo v8, "adaptive_power_saving_setting"

    .line 1495
    .line 1496
    .line 1497
    const/4 v11, 0x0

    .line 1498
    invoke-static {v0, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1499
    .line 1500
    .line 1501
    move-result v0

    .line 1502
    const-string/jumbo v8, "SystemServer"

    .line 1503
    .line 1504
    .line 1505
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1506
    .line 1507
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v6

    .line 1517
    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    .line 1519
    .line 1520
    new-instance v6, Ldalvik/system/PathClassLoader;

    .line 1521
    .line 1522
    const-string v8, "/system/framework/hcm.jar"

    .line 1523
    .line 1524
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v11

    .line 1528
    invoke-direct {v6, v8, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1529
    .line 1530
    .line 1531
    const-string/jumbo v8, "com.samsung.android.hcm.HcmManagerService"

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v6, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v6

    .line 1538
    if-lez v0, :cond_b

    .line 1539
    .line 1540
    const/4 v8, 0x1

    .line 1541
    new-array v0, v8, [Ljava/lang/Class;

    .line 1542
    .line 1543
    const-class v8, Landroid/content/Context;

    .line 1544
    .line 1545
    const/16 v19, 0x0

    .line 1546
    .line 1547
    aput-object v8, v0, v19

    .line 1548
    .line 1549
    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v0

    .line 1553
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v6

    .line 1557
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v0

    .line 1561
    check-cast v0, Landroid/os/IBinder;

    .line 1562
    .line 1563
    const-string v6, "HcmManagerService"

    .line 1564
    .line 1565
    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1566
    .line 1567
    .line 1568
    goto :goto_17

    .line 1569
    :catch_6
    move-exception v0

    .line 1570
    goto :goto_16

    .line 1571
    :cond_b
    const-string v0, "HcmManagerService"

    .line 1572
    .line 1573
    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6
    .catchall {:try_start_26 .. :try_end_26} :catchall_6e

    .line 1574
    .line 1575
    .line 1576
    goto :goto_17

    .line 1577
    :goto_16
    :try_start_27
    const-string/jumbo v6, "SystemServer"

    .line 1578
    .line 1579
    .line 1580
    const-string v8, "Failed to add HcmManagerService."

    .line 1581
    .line 1582
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1586
    .line 1587
    .line 1588
    :goto_17
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1589
    .line 1590
    .line 1591
    :cond_c
    const-string v0, "IpConnectivityMetrics"

    .line 1592
    .line 1593
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1597
    .line 1598
    const-class v6, Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 1599
    .line 1600
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1604
    .line 1605
    .line 1606
    const-string/jumbo v0, "NetworkWatchlistService"

    .line 1607
    .line 1608
    .line 1609
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1610
    .line 1611
    .line 1612
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1613
    .line 1614
    const-class v6, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    .line 1615
    .line 1616
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1620
    .line 1621
    .line 1622
    const-string/jumbo v0, "PinnerService"

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1626
    .line 1627
    .line 1628
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1629
    .line 1630
    const-class v6, Lcom/android/server/pinner/PinnerService;

    .line 1631
    .line 1632
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1633
    .line 1634
    .line 1635
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1636
    .line 1637
    .line 1638
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1639
    .line 1640
    if-eqz v0, :cond_d

    .line 1641
    .line 1642
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    .line 1643
    .line 1644
    .line 1645
    move-result v0

    .line 1646
    if-eqz v0, :cond_d

    .line 1647
    .line 1648
    const-string/jumbo v0, "ProfcollectForwardingService"

    .line 1649
    .line 1650
    .line 1651
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1652
    .line 1653
    .line 1654
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1655
    .line 1656
    const-class v6, Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 1657
    .line 1658
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1662
    .line 1663
    .line 1664
    :cond_d
    const-string/jumbo v0, "SignedConfigService"

    .line 1665
    .line 1666
    .line 1667
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1671
    .line 1672
    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1673
    .line 1674
    .line 1675
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1676
    .line 1677
    .line 1678
    const-string v0, "AppIntegrityService"

    .line 1679
    .line 1680
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1681
    .line 1682
    .line 1683
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1684
    .line 1685
    const-class v6, Lcom/android/server/integrity/AppIntegrityManagerService;

    .line 1686
    .line 1687
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1688
    .line 1689
    .line 1690
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1691
    .line 1692
    .line 1693
    const-string/jumbo v0, "StartLogcatManager"

    .line 1694
    .line 1695
    .line 1696
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1697
    .line 1698
    .line 1699
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1700
    .line 1701
    const-class v6, Lcom/android/server/logcat/LogcatManagerService;

    .line 1702
    .line 1703
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1704
    .line 1705
    .line 1706
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1707
    .line 1708
    .line 1709
    if-nez v13, :cond_e

    .line 1710
    .line 1711
    if-nez v15, :cond_e

    .line 1712
    .line 1713
    if-nez v16, :cond_e

    .line 1714
    .line 1715
    if-nez v12, :cond_e

    .line 1716
    .line 1717
    const-string/jumbo v0, "StartIntrusionDetectionService"

    .line 1718
    .line 1719
    .line 1720
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1721
    .line 1722
    .line 1723
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1724
    .line 1725
    const-class v6, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    .line 1726
    .line 1727
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1728
    .line 1729
    .line 1730
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1731
    .line 1732
    .line 1733
    :cond_e
    invoke-static {v7}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    .line 1734
    .line 1735
    .line 1736
    move-result v0

    .line 1737
    if-eqz v0, :cond_f

    .line 1738
    .line 1739
    const-string/jumbo v0, "StartAppFunctionManager"

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1746
    .line 1747
    const-class v6, Lcom/android/server/appfunctions/AppFunctionManagerService;

    .line 1748
    .line 1749
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1753
    .line 1754
    .line 1755
    :cond_f
    if-nez v13, :cond_10

    .line 1756
    .line 1757
    if-nez v15, :cond_10

    .line 1758
    .line 1759
    if-nez v16, :cond_10

    .line 1760
    .line 1761
    if-nez v12, :cond_10

    .line 1762
    .line 1763
    const-string/jumbo v0, "StartAdvancedProtectionService"

    .line 1764
    .line 1765
    .line 1766
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1767
    .line 1768
    .line 1769
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1770
    .line 1771
    const-class v6, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;

    .line 1772
    .line 1773
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1777
    .line 1778
    .line 1779
    :cond_10
    if-nez v13, :cond_11

    .line 1780
    .line 1781
    if-nez v15, :cond_11

    .line 1782
    .line 1783
    if-nez v16, :cond_11

    .line 1784
    .line 1785
    const-string/jumbo v0, "StartTradeInModeService"

    .line 1786
    .line 1787
    .line 1788
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1789
    .line 1790
    .line 1791
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1792
    .line 1793
    const-class v6, Lcom/android/server/TradeInModeService;

    .line 1794
    .line 1795
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1796
    .line 1797
    .line 1798
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1799
    .line 1800
    .line 1801
    :cond_11
    const-string/jumbo v0, "SemInputDeviceManagerService"

    .line 1802
    .line 1803
    .line 1804
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6e

    .line 1805
    .line 1806
    .line 1807
    :try_start_28
    const-string/jumbo v0, "SystemServer"

    .line 1808
    .line 1809
    .line 1810
    const-string/jumbo v6, "SemInputDeviceManagerService loader"

    .line 1811
    .line 1812
    .line 1813
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    .line 1815
    .line 1816
    const-string/jumbo v0, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    .line 1817
    .line 1818
    .line 1819
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v0

    .line 1823
    const-string/jumbo v6, "getService"

    .line 1824
    .line 1825
    .line 1826
    const/4 v8, 0x1

    .line 1827
    new-array v11, v8, [Ljava/lang/Class;

    .line 1828
    .line 1829
    const-class v8, Landroid/content/Context;

    .line 1830
    .line 1831
    const/16 v19, 0x0

    .line 1832
    .line 1833
    aput-object v8, v11, v19

    .line 1834
    .line 1835
    invoke-virtual {v0, v6, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v6

    .line 1839
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v8

    .line 1843
    invoke-virtual {v6, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v0

    .line 1847
    check-cast v0, Landroid/os/IBinder;

    .line 1848
    .line 1849
    const-string/jumbo v6, "SemInputDeviceManagerService"

    .line 1850
    .line 1851
    .line 1852
    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    .line 1853
    .line 1854
    .line 1855
    goto :goto_18

    .line 1856
    :catchall_c
    move-exception v0

    .line 1857
    :try_start_29
    const-string v6, "Failed To Start SemInputDeviceManagerService loader"

    .line 1858
    .line 1859
    invoke-static {v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1860
    .line 1861
    .line 1862
    :goto_18
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1863
    .line 1864
    .line 1865
    const-string/jumbo v0, "SecIpmManagerService"

    .line 1866
    .line 1867
    .line 1868
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1869
    .line 1870
    .line 1871
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1872
    .line 1873
    const-string/jumbo v6, "com.android.server.ipm.SecIpmManagerService"

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1877
    .line 1878
    .line 1879
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1880
    .line 1881
    .line 1882
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 1883
    .line 1884
    const/4 v8, 0x1

    .line 1885
    if-eq v0, v8, :cond_12

    .line 1886
    .line 1887
    const-string/jumbo v0, "vold.decrypt"

    .line 1888
    .line 1889
    .line 1890
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1891
    .line 1892
    .line 1893
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1894
    .line 1895
    const-string/jumbo v6, "com.sec.feature.cover"

    .line 1896
    .line 1897
    .line 1898
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1899
    .line 1900
    .line 1901
    move-result v0

    .line 1902
    if-eqz v0, :cond_12

    .line 1903
    .line 1904
    const-string/jumbo v0, "StartCoverService"

    .line 1905
    .line 1906
    .line 1907
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1908
    .line 1909
    .line 1910
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1911
    .line 1912
    const-class v6, Lcom/android/server/cover/CoverManagerService;

    .line 1913
    .line 1914
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1918
    .line 1919
    .line 1920
    :cond_12
    const-string/jumbo v0, "Samsung Accessory Manager"

    .line 1921
    .line 1922
    .line 1923
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6e

    .line 1924
    .line 1925
    .line 1926
    :try_start_2a
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v0

    .line 1930
    if-eqz v0, :cond_14

    .line 1931
    .line 1932
    const-string/jumbo v6, "com.sec.feature.nfc_authentication"

    .line 1933
    .line 1934
    .line 1935
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1936
    .line 1937
    .line 1938
    move-result v6

    .line 1939
    if-nez v6, :cond_13

    .line 1940
    .line 1941
    const-string/jumbo v6, "com.sec.feature.nfc_authentication_cover"

    .line 1942
    .line 1943
    .line 1944
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1945
    .line 1946
    .line 1947
    move-result v6

    .line 1948
    if-nez v6, :cond_13

    .line 1949
    .line 1950
    const-string/jumbo v6, "com.sec.feature.usb_authentication"

    .line 1951
    .line 1952
    .line 1953
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1954
    .line 1955
    .line 1956
    move-result v6

    .line 1957
    if-nez v6, :cond_13

    .line 1958
    .line 1959
    const-string/jumbo v6, "com.sec.feature.wirelesscharger_authentication"

    .line 1960
    .line 1961
    .line 1962
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1963
    .line 1964
    .line 1965
    move-result v0

    .line 1966
    if-eqz v0, :cond_14

    .line 1967
    .line 1968
    goto/16 :goto_19

    .line 1969
    .line 1970
    :catchall_d
    move-exception v0

    .line 1971
    goto :goto_1a

    .line 1972
    :cond_13
    :goto_19
    const-string/jumbo v0, "SystemServer"

    .line 1973
    .line 1974
    .line 1975
    const-string/jumbo v6, "Samsung Accessory Manager"

    .line 1976
    .line 1977
    .line 1978
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    .line 1980
    .line 1981
    new-instance v0, Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1982
    .line 1983
    invoke-direct {v0, v7, v3}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1984
    .line 1985
    .line 1986
    iput-object v0, v1, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1987
    .line 1988
    const-class v6, Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1989
    .line 1990
    invoke-static {v6, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1991
    .line 1992
    .line 1993
    iget-object v0, v1, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1994
    .line 1995
    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    .line 1996
    .line 1997
    .line 1998
    goto/16 :goto_1b

    .line 1999
    .line 2000
    :goto_1a
    :try_start_2b
    const-string/jumbo v6, "starting SAccessoryManager"

    .line 2001
    .line 2002
    .line 2003
    invoke-static {v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2004
    .line 2005
    .line 2006
    :cond_14
    :goto_1b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_6e

    .line 2007
    .line 2008
    .line 2009
    const-string/jumbo v0, "detectSafeMode"

    .line 2010
    .line 2011
    .line 2012
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2013
    .line 2014
    .line 2015
    const-string/jumbo v0, "SystemServer"

    .line 2016
    .line 2017
    .line 2018
    const-string v6, "!@Boot_EBS_D: detectSafeMode"

    .line 2019
    .line 2020
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    .line 2022
    .line 2023
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    .line 2024
    .line 2025
    .line 2026
    move-result v6

    .line 2027
    if-eqz v6, :cond_15

    .line 2028
    .line 2029
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v0

    .line 2033
    const-string/jumbo v8, "airplane_mode_on"

    .line 2034
    .line 2035
    .line 2036
    const/4 v11, 0x1

    .line 2037
    invoke-static {v0, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2038
    .line 2039
    .line 2040
    goto/16 :goto_1c

    .line 2041
    .line 2042
    :cond_15
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v0

    .line 2046
    const v8, 0x1110043

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 2050
    .line 2051
    .line 2052
    move-result v0

    .line 2053
    if-eqz v0, :cond_16

    .line 2054
    .line 2055
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v0

    .line 2059
    const-string/jumbo v8, "airplane_mode_on"

    .line 2060
    .line 2061
    .line 2062
    const/4 v11, 0x0

    .line 2063
    invoke-static {v0, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2064
    .line 2065
    .line 2066
    :cond_16
    :goto_1c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2067
    .line 2068
    .line 2069
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 2070
    .line 2071
    const/4 v8, 0x1

    .line 2072
    if-eq v0, v8, :cond_18

    .line 2073
    .line 2074
    const-string/jumbo v0, "StartInputMethodManagerLifecycle"

    .line 2075
    .line 2076
    .line 2077
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2078
    .line 2079
    .line 2080
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2081
    .line 2082
    .line 2083
    move-result-object v0

    .line 2084
    const v8, 0x1040358

    .line 2085
    .line 2086
    .line 2087
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v8

    .line 2091
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 2092
    .line 2093
    .line 2094
    move-result v0

    .line 2095
    if-eqz v0, :cond_17

    .line 2096
    .line 2097
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2098
    .line 2099
    const-class v5, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    .line 2100
    .line 2101
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2102
    .line 2103
    .line 2104
    goto/16 :goto_1d

    .line 2105
    .line 2106
    :cond_17
    :try_start_2c
    const-string/jumbo v0, "SystemServer"

    .line 2107
    .line 2108
    .line 2109
    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v5

    .line 2113
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    .line 2115
    .line 2116
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2117
    .line 2118
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    .line 2119
    .line 2120
    .line 2121
    goto/16 :goto_1d

    .line 2122
    .line 2123
    :catchall_e
    move-exception v0

    .line 2124
    const-string/jumbo v5, "starting "

    .line 2125
    .line 2126
    .line 2127
    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v5

    .line 2131
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2132
    .line 2133
    .line 2134
    :goto_1d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2135
    .line 2136
    .line 2137
    const-string/jumbo v0, "StartAccessibilityManagerService"

    .line 2138
    .line 2139
    .line 2140
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2141
    .line 2142
    .line 2143
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2144
    .line 2145
    const-class v5, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    .line 2146
    .line 2147
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_f

    .line 2148
    .line 2149
    .line 2150
    goto/16 :goto_1e

    .line 2151
    .line 2152
    :catchall_f
    move-exception v0

    .line 2153
    const-string/jumbo v5, "starting Accessibility Manager"

    .line 2154
    .line 2155
    .line 2156
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2157
    .line 2158
    .line 2159
    :goto_1e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2160
    .line 2161
    .line 2162
    :cond_18
    const-string/jumbo v0, "MakeDisplayReady"

    .line 2163
    .line 2164
    .line 2165
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2166
    .line 2167
    .line 2168
    :try_start_2e
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_10

    .line 2169
    .line 2170
    .line 2171
    goto/16 :goto_1f

    .line 2172
    .line 2173
    :catchall_10
    move-exception v0

    .line 2174
    const-string/jumbo v5, "making display ready"

    .line 2175
    .line 2176
    .line 2177
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2178
    .line 2179
    .line 2180
    :goto_1f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2181
    .line 2182
    .line 2183
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v0

    .line 2187
    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    .line 2188
    .line 2189
    .line 2190
    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2191
    .line 2192
    .line 2193
    move-result-object v0

    .line 2194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2195
    .line 2196
    .line 2197
    move-result v5

    .line 2198
    if-lez v5, :cond_19

    .line 2199
    .line 2200
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2201
    .line 2202
    .line 2203
    move-result v0

    .line 2204
    if-lez v0, :cond_19

    .line 2205
    .line 2206
    const-string v0, "Add SEM_FM_RADIO_SERVICE"

    .line 2207
    .line 2208
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2209
    .line 2210
    .line 2211
    :try_start_2f
    const-string v0, "FMPlayer"

    .line 2212
    .line 2213
    const-class v5, Lcom/android/server/FMRadioService;

    .line 2214
    .line 2215
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2216
    .line 2217
    .line 2218
    const-string/jumbo v0, "SystemServer"

    .line 2219
    .line 2220
    .line 2221
    const-string v5, "FMRadio service added.."

    .line 2222
    .line 2223
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    .line 2224
    .line 2225
    .line 2226
    goto/16 :goto_20

    .line 2227
    .line 2228
    :catchall_11
    move-exception v0

    .line 2229
    const-string v5, "Failure starting FM Radio Service"

    .line 2230
    .line 2231
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2232
    .line 2233
    .line 2234
    :goto_20
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2235
    .line 2236
    .line 2237
    :cond_19
    const-string/jumbo v0, "StartRemoteAppModeService"

    .line 2238
    .line 2239
    .line 2240
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2241
    .line 2242
    .line 2243
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2244
    .line 2245
    const-class v5, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;

    .line 2246
    .line 2247
    const-string v8, "IcccManagerService"

    .line 2248
    .line 2249
    invoke-static {v0, v5, v2, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 2250
    .line 2251
    .line 2252
    :try_start_30
    const-string/jumbo v0, "iccc"

    .line 2253
    .line 2254
    .line 2255
    new-instance v5, Lcom/android/server/SystemServer$5;

    .line 2256
    .line 2257
    const/4 v11, 0x0

    .line 2258
    invoke-direct {v5, v11}, Lcom/android/server/SystemServer$5;-><init>(I)V

    .line 2259
    .line 2260
    .line 2261
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    .line 2262
    .line 2263
    .line 2264
    goto/16 :goto_21

    .line 2265
    .line 2266
    :catchall_12
    move-exception v0

    .line 2267
    const-string v5, "Failure starting IcccManagerService "

    .line 2268
    .line 2269
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2270
    .line 2271
    .line 2272
    :goto_21
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2273
    .line 2274
    .line 2275
    const-string/jumbo v0, "SamsungGameManager"

    .line 2276
    .line 2277
    .line 2278
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2279
    .line 2280
    .line 2281
    :try_start_31
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 2282
    .line 2283
    const-string v5, "/system/framework/gamemanager.jar"

    .line 2284
    .line 2285
    const-class v8, Lcom/android/server/SystemServer;

    .line 2286
    .line 2287
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v8

    .line 2291
    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2292
    .line 2293
    .line 2294
    const-string/jumbo v5, "com.samsung.android.game.GameManagerService$Lifecycle"

    .line 2295
    .line 2296
    .line 2297
    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v0

    .line 2301
    iget-object v5, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2302
    .line 2303
    invoke-virtual {v5, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2304
    .line 2305
    .line 2306
    const-string/jumbo v0, "SystemServer"

    .line 2307
    .line 2308
    .line 2309
    const-string/jumbo v5, "SamsungGameManager Started"

    .line 2310
    .line 2311
    .line 2312
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    .line 2313
    .line 2314
    .line 2315
    goto/16 :goto_22

    .line 2316
    .line 2317
    :catchall_13
    move-exception v0

    .line 2318
    const-string/jumbo v5, "SystemServer"

    .line 2319
    .line 2320
    .line 2321
    const-string v8, "Failed to start SamsungGameManager."

    .line 2322
    .line 2323
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2324
    .line 2325
    .line 2326
    :goto_22
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2327
    .line 2328
    .line 2329
    const-string v0, "DisplayAiqeManagerService"

    .line 2330
    .line 2331
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2332
    .line 2333
    .line 2334
    :try_start_32
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 2335
    .line 2336
    const-string v5, "/system/framework/displayaiqe_svc.jar"

    .line 2337
    .line 2338
    const-class v8, Lcom/android/server/SystemServer;

    .line 2339
    .line 2340
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2341
    .line 2342
    .line 2343
    move-result-object v8

    .line 2344
    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2345
    .line 2346
    .line 2347
    const-string/jumbo v5, "com.samsung.android.displayaiqe.DisplayAiqeManagerService$Lifecycle"

    .line 2348
    .line 2349
    .line 2350
    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v0

    .line 2354
    if-nez v0, :cond_1a

    .line 2355
    .line 2356
    const-string/jumbo v0, "SystemServer"

    .line 2357
    .line 2358
    .line 2359
    const-string v5, "Can\'t load DisplayAiqeManagerService class"

    .line 2360
    .line 2361
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    .line 2363
    .line 2364
    goto/16 :goto_24

    .line 2365
    .line 2366
    :catchall_14
    move-exception v0

    .line 2367
    goto/16 :goto_23

    .line 2368
    .line 2369
    :cond_1a
    iget-object v5, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2370
    .line 2371
    invoke-virtual {v5, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2372
    .line 2373
    .line 2374
    const-string/jumbo v0, "SystemServer"

    .line 2375
    .line 2376
    .line 2377
    const-string v5, "DisplayAiqeManagerService Started"

    .line 2378
    .line 2379
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_14

    .line 2380
    .line 2381
    .line 2382
    goto/16 :goto_24

    .line 2383
    .line 2384
    :goto_23
    const-string/jumbo v5, "SystemServer"

    .line 2385
    .line 2386
    .line 2387
    const-string v8, "Failed to start DisplayAiqeManagerService."

    .line 2388
    .line 2389
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2390
    .line 2391
    .line 2392
    :goto_24
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2393
    .line 2394
    .line 2395
    const-string/jumbo v0, "SehHdrSolutionService"

    .line 2396
    .line 2397
    .line 2398
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2399
    .line 2400
    .line 2401
    :try_start_33
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 2402
    .line 2403
    const-string v5, "/system/framework/vendor.samsung.frameworks.hdrsolution-service.jar"

    .line 2404
    .line 2405
    const-class v8, Lcom/android/server/SystemServer;

    .line 2406
    .line 2407
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v8

    .line 2411
    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2412
    .line 2413
    .line 2414
    const-string/jumbo v5, "vendor.samsung.frameworks.hdrsolution.SehHdrSolutionService"

    .line 2415
    .line 2416
    .line 2417
    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2418
    .line 2419
    .line 2420
    move-result-object v0

    .line 2421
    if-nez v0, :cond_1b

    .line 2422
    .line 2423
    const-string/jumbo v0, "SystemServer"

    .line 2424
    .line 2425
    .line 2426
    const-string v5, "Can\'t load SehHdrSolutionService class"

    .line 2427
    .line 2428
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    .line 2430
    .line 2431
    goto :goto_26

    .line 2432
    :catchall_15
    move-exception v0

    .line 2433
    goto/16 :goto_25

    .line 2434
    .line 2435
    :cond_1b
    const/4 v8, 0x2

    .line 2436
    new-array v5, v8, [Ljava/lang/Class;

    .line 2437
    .line 2438
    const-class v8, Landroid/content/Context;

    .line 2439
    .line 2440
    const/16 v19, 0x0

    .line 2441
    .line 2442
    aput-object v8, v5, v19

    .line 2443
    .line 2444
    const-class v8, Landroid/app/IActivityManager;

    .line 2445
    .line 2446
    const/16 v18, 0x1

    .line 2447
    .line 2448
    aput-object v8, v5, v18

    .line 2449
    .line 2450
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2451
    .line 2452
    .line 2453
    move-result-object v0

    .line 2454
    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2455
    .line 2456
    filled-new-array {v7, v5}, [Ljava/lang/Object;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v5

    .line 2460
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    .line 2462
    .line 2463
    move-result-object v0

    .line 2464
    check-cast v0, Landroid/os/IBinder;

    .line 2465
    .line 2466
    const-string/jumbo v5, "vendor.samsung.frameworks.hdrsolution.ISehHdrSolution/default"

    .line 2467
    .line 2468
    .line 2469
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2470
    .line 2471
    .line 2472
    const-string/jumbo v0, "SystemServer"

    .line 2473
    .line 2474
    .line 2475
    const-string/jumbo v5, "SehHdrSolutionService loaded"

    .line 2476
    .line 2477
    .line 2478
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    .line 2480
    .line 2481
    const-string/jumbo v0, "secmm.hdrsolution.ready"

    .line 2482
    .line 2483
    .line 2484
    const-string v5, "1"

    .line 2485
    .line 2486
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_15

    .line 2487
    .line 2488
    .line 2489
    goto/16 :goto_26

    .line 2490
    .line 2491
    :goto_25
    const-string/jumbo v5, "SystemServer"

    .line 2492
    .line 2493
    .line 2494
    const-string v8, "Failed to start SehHdrSolutionService "

    .line 2495
    .line 2496
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2497
    .line 2498
    .line 2499
    :goto_26
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2500
    .line 2501
    .line 2502
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_JDM_MODEL:Z

    .line 2503
    .line 2504
    if-nez v0, :cond_1d

    .line 2505
    .line 2506
    const-string/jumbo v0, "SystemServer"

    .line 2507
    .line 2508
    .line 2509
    const-string/jumbo v5, "PerfSDKService"

    .line 2510
    .line 2511
    .line 2512
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    .line 2514
    .line 2515
    const-string/jumbo v0, "PerfSDKService"

    .line 2516
    .line 2517
    .line 2518
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2519
    .line 2520
    .line 2521
    :try_start_34
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 2522
    .line 2523
    const-string v5, "/system/framework/perfsdkservice.jar"

    .line 2524
    .line 2525
    const-class v8, Lcom/android/server/SystemServer;

    .line 2526
    .line 2527
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2528
    .line 2529
    .line 2530
    move-result-object v8

    .line 2531
    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2532
    .line 2533
    .line 2534
    const-string/jumbo v5, "com.samsung.android.perfsdkservice.PerfSDKService"

    .line 2535
    .line 2536
    .line 2537
    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v0

    .line 2541
    if-nez v0, :cond_1c

    .line 2542
    .line 2543
    const-string/jumbo v0, "SystemServer"

    .line 2544
    .line 2545
    .line 2546
    const-string v5, "Can\'t load PerfSdkService class"

    .line 2547
    .line 2548
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    .line 2550
    .line 2551
    goto/16 :goto_28

    .line 2552
    .line 2553
    :catchall_16
    move-exception v0

    .line 2554
    goto/16 :goto_27

    .line 2555
    .line 2556
    :cond_1c
    const/4 v8, 0x2

    .line 2557
    new-array v5, v8, [Ljava/lang/Class;

    .line 2558
    .line 2559
    const-class v8, Landroid/content/Context;

    .line 2560
    .line 2561
    const/16 v19, 0x0

    .line 2562
    .line 2563
    aput-object v8, v5, v19

    .line 2564
    .line 2565
    const-class v8, Landroid/app/IActivityManager;

    .line 2566
    .line 2567
    const/16 v18, 0x1

    .line 2568
    .line 2569
    aput-object v8, v5, v18

    .line 2570
    .line 2571
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2572
    .line 2573
    .line 2574
    move-result-object v0

    .line 2575
    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2576
    .line 2577
    filled-new-array {v7, v5}, [Ljava/lang/Object;

    .line 2578
    .line 2579
    .line 2580
    move-result-object v5

    .line 2581
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    .line 2583
    .line 2584
    move-result-object v0

    .line 2585
    check-cast v0, Landroid/os/IBinder;

    .line 2586
    .line 2587
    const-string/jumbo v5, "perfsdkservice"

    .line 2588
    .line 2589
    .line 2590
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2591
    .line 2592
    .line 2593
    const-string/jumbo v0, "SystemServer"

    .line 2594
    .line 2595
    .line 2596
    const-string/jumbo v5, "PerfSDKService loaded"

    .line 2597
    .line 2598
    .line 2599
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_16

    .line 2600
    .line 2601
    .line 2602
    goto/16 :goto_28

    .line 2603
    .line 2604
    :goto_27
    const-string/jumbo v5, "SystemServer"

    .line 2605
    .line 2606
    .line 2607
    const-string v8, "Failed to add PerfSDKService."

    .line 2608
    .line 2609
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2610
    .line 2611
    .line 2612
    :goto_28
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2613
    .line 2614
    .line 2615
    :cond_1d
    const-string/jumbo v0, "SehCodecSolutionService"

    .line 2616
    .line 2617
    .line 2618
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2619
    .line 2620
    .line 2621
    :try_start_35
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 2622
    .line 2623
    const-string v5, "/system/framework/vendor.samsung.frameworks.codecsolution-service.jar"

    .line 2624
    .line 2625
    const-class v8, Lcom/android/server/SystemServer;

    .line 2626
    .line 2627
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2628
    .line 2629
    .line 2630
    move-result-object v8

    .line 2631
    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2632
    .line 2633
    .line 2634
    const-string/jumbo v5, "vendor.samsung.frameworks.codecsolution.SehCodecSolutionService"

    .line 2635
    .line 2636
    .line 2637
    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2638
    .line 2639
    .line 2640
    move-result-object v0

    .line 2641
    if-nez v0, :cond_1e

    .line 2642
    .line 2643
    const-string/jumbo v0, "SystemServer"

    .line 2644
    .line 2645
    .line 2646
    const-string v5, "Can\'t load SehCodecSolutionService class"

    .line 2647
    .line 2648
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    .line 2650
    .line 2651
    goto/16 :goto_2a

    .line 2652
    .line 2653
    :catchall_17
    move-exception v0

    .line 2654
    goto/16 :goto_29

    .line 2655
    .line 2656
    :cond_1e
    const/4 v8, 0x2

    .line 2657
    new-array v5, v8, [Ljava/lang/Class;

    .line 2658
    .line 2659
    const-class v8, Landroid/content/Context;

    .line 2660
    .line 2661
    const/16 v19, 0x0

    .line 2662
    .line 2663
    aput-object v8, v5, v19

    .line 2664
    .line 2665
    const-class v8, Landroid/app/IActivityManager;

    .line 2666
    .line 2667
    const/16 v18, 0x1

    .line 2668
    .line 2669
    aput-object v8, v5, v18

    .line 2670
    .line 2671
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2672
    .line 2673
    .line 2674
    move-result-object v0

    .line 2675
    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2676
    .line 2677
    filled-new-array {v7, v5}, [Ljava/lang/Object;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v5

    .line 2681
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2682
    .line 2683
    .line 2684
    move-result-object v0

    .line 2685
    check-cast v0, Landroid/os/IBinder;

    .line 2686
    .line 2687
    const-string/jumbo v5, "vendor.samsung.frameworks.codecsolution.ISehCodecSolution/default"

    .line 2688
    .line 2689
    .line 2690
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2691
    .line 2692
    .line 2693
    const-string/jumbo v0, "SystemServer"

    .line 2694
    .line 2695
    .line 2696
    const-string/jumbo v5, "SehCodecSolutionService loaded"

    .line 2697
    .line 2698
    .line 2699
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    .line 2701
    .line 2702
    const-string/jumbo v0, "secmm.codecsolution.ready"

    .line 2703
    .line 2704
    .line 2705
    const-string v5, "1"

    .line 2706
    .line 2707
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_17

    .line 2708
    .line 2709
    .line 2710
    goto/16 :goto_2a

    .line 2711
    .line 2712
    :goto_29
    const-string/jumbo v5, "SystemServer"

    .line 2713
    .line 2714
    .line 2715
    const-string v8, "Failed to start SehCodecSolutionService "

    .line 2716
    .line 2717
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2718
    .line 2719
    .line 2720
    :goto_2a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2721
    .line 2722
    .line 2723
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 2724
    .line 2725
    const/4 v8, 0x1

    .line 2726
    if-eq v0, v8, :cond_20

    .line 2727
    .line 2728
    const-string v0, "0"

    .line 2729
    .line 2730
    const-string/jumbo v5, "system_init.startmountservice"

    .line 2731
    .line 2732
    .line 2733
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v5

    .line 2737
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2738
    .line 2739
    .line 2740
    move-result v0

    .line 2741
    if-nez v0, :cond_20

    .line 2742
    .line 2743
    const-string/jumbo v0, "StartStorageManagerService"

    .line 2744
    .line 2745
    .line 2746
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2747
    .line 2748
    .line 2749
    :try_start_36
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2750
    .line 2751
    const-class v5, Lcom/android/server/StorageManagerService$Lifecycle;

    .line 2752
    .line 2753
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2754
    .line 2755
    .line 2756
    const-string/jumbo v0, "mount"

    .line 2757
    .line 2758
    .line 2759
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2760
    .line 2761
    .line 2762
    move-result-object v0

    .line 2763
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_18

    .line 2764
    .line 2765
    .line 2766
    goto/16 :goto_2b

    .line 2767
    .line 2768
    :catchall_18
    move-exception v0

    .line 2769
    const-string/jumbo v5, "starting StorageManagerService"

    .line 2770
    .line 2771
    .line 2772
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2773
    .line 2774
    .line 2775
    :goto_2b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2776
    .line 2777
    .line 2778
    const-string/jumbo v0, "StartStorageStatsService"

    .line 2779
    .line 2780
    .line 2781
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2782
    .line 2783
    .line 2784
    :try_start_37
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2785
    .line 2786
    const-class v5, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    .line 2787
    .line 2788
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_19

    .line 2789
    .line 2790
    .line 2791
    goto/16 :goto_2c

    .line 2792
    .line 2793
    :catchall_19
    move-exception v0

    .line 2794
    const-string/jumbo v5, "starting StorageStatsService"

    .line 2795
    .line 2796
    .line 2797
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2798
    .line 2799
    .line 2800
    :goto_2c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2801
    .line 2802
    .line 2803
    const-string v0, "DirEncryptSerrvice"

    .line 2804
    .line 2805
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2806
    .line 2807
    .line 2808
    :try_start_38
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 2809
    .line 2810
    .line 2811
    move-result v0

    .line 2812
    if-eqz v0, :cond_1f

    .line 2813
    .line 2814
    new-instance v0, Lcom/android/server/DirEncryptService;

    .line 2815
    .line 2816
    invoke-direct {v0, v7}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V

    .line 2817
    .line 2818
    .line 2819
    const-string/jumbo v5, "SystemServer"

    .line 2820
    .line 2821
    .line 2822
    const-string v8, "DirEncryptService.SystemReady"

    .line 2823
    .line 2824
    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    .line 2826
    .line 2827
    invoke-virtual {v0}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 2828
    .line 2829
    .line 2830
    const-string v5, "DirEncryptService"

    .line 2831
    .line 2832
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1a

    .line 2833
    .line 2834
    .line 2835
    goto/16 :goto_2d

    .line 2836
    .line 2837
    :catchall_1a
    move-exception v0

    .line 2838
    const-string/jumbo v5, "starting DirEncryption service"

    .line 2839
    .line 2840
    .line 2841
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2842
    .line 2843
    .line 2844
    :cond_1f
    :goto_2d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2845
    .line 2846
    .line 2847
    :cond_20
    const-string/jumbo v0, "StartUiModeManager"

    .line 2848
    .line 2849
    .line 2850
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2851
    .line 2852
    .line 2853
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2854
    .line 2855
    const-class v5, Lcom/android/server/UiModeManagerService;

    .line 2856
    .line 2857
    const-string/jumbo v8, "StartLocaleManagerService"

    .line 2858
    .line 2859
    .line 2860
    invoke-static {v0, v5, v2, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 2861
    .line 2862
    .line 2863
    :try_start_39
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2864
    .line 2865
    const-class v5, Lcom/android/server/locales/LocaleManagerService;

    .line 2866
    .line 2867
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1b

    .line 2868
    .line 2869
    .line 2870
    goto/16 :goto_2e

    .line 2871
    .line 2872
    :catchall_1b
    move-exception v0

    .line 2873
    const-string/jumbo v5, "starting LocaleManagerService service"

    .line 2874
    .line 2875
    .line 2876
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2877
    .line 2878
    .line 2879
    :goto_2e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2880
    .line 2881
    .line 2882
    const-string/jumbo v0, "StartGrammarInflectionService"

    .line 2883
    .line 2884
    .line 2885
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2886
    .line 2887
    .line 2888
    :try_start_3a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2889
    .line 2890
    const-class v5, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 2891
    .line 2892
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1c

    .line 2893
    .line 2894
    .line 2895
    goto/16 :goto_2f

    .line 2896
    .line 2897
    :catchall_1c
    move-exception v0

    .line 2898
    const-string/jumbo v5, "starting GrammarInflectionService service"

    .line 2899
    .line 2900
    .line 2901
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2902
    .line 2903
    .line 2904
    :goto_2f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2905
    .line 2906
    .line 2907
    const-string/jumbo v0, "StartAppHibernationService"

    .line 2908
    .line 2909
    .line 2910
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2911
    .line 2912
    .line 2913
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2914
    .line 2915
    const-class v5, Lcom/android/server/apphibernation/AppHibernationService;

    .line 2916
    .line 2917
    const-string v8, "ArtManagerLocal"

    .line 2918
    .line 2919
    invoke-static {v0, v5, v2, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 2920
    .line 2921
    .line 2922
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2923
    .line 2924
    invoke-static {v7, v0}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 2925
    .line 2926
    .line 2927
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2928
    .line 2929
    .line 2930
    const-string/jumbo v0, "UpdatePackagesIfNeeded"

    .line 2931
    .line 2932
    .line 2933
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2934
    .line 2935
    .line 2936
    const-string/jumbo v0, "SystemServer"

    .line 2937
    .line 2938
    .line 2939
    const-string v5, "!@Boot_EBS_D: UpdatePackagesIfNeeded"

    .line 2940
    .line 2941
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    .line 2943
    .line 2944
    :try_start_3b
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2945
    .line 2946
    .line 2947
    move-result-object v0

    .line 2948
    const-string/jumbo v5, "dexopt"

    .line 2949
    .line 2950
    .line 2951
    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2952
    .line 2953
    .line 2954
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2955
    .line 2956
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1d

    .line 2957
    .line 2958
    .line 2959
    :goto_30
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2960
    .line 2961
    .line 2962
    move-result-object v0

    .line 2963
    const-string/jumbo v5, "dexopt"

    .line 2964
    .line 2965
    .line 2966
    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2967
    .line 2968
    .line 2969
    goto/16 :goto_31

    .line 2970
    .line 2971
    :catchall_1d
    move-exception v0

    .line 2972
    :try_start_3c
    const-string/jumbo v5, "update packages"

    .line 2973
    .line 2974
    .line 2975
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6c

    .line 2976
    .line 2977
    .line 2978
    goto :goto_30

    .line 2979
    :goto_31
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2980
    .line 2981
    .line 2982
    const-string/jumbo v0, "UpdateMetricsIfNeeded"

    .line 2983
    .line 2984
    .line 2985
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2986
    .line 2987
    .line 2988
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2989
    .line 2990
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updateMetricsIfNeeded()V

    .line 2991
    .line 2992
    .line 2993
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2994
    .line 2995
    .line 2996
    const-string/jumbo v0, "StartProfileUtilizationService"

    .line 2997
    .line 2998
    .line 2999
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3000
    .line 3001
    .line 3002
    :try_start_3d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3003
    .line 3004
    const-class v5, Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 3005
    .line 3006
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3007
    .line 3008
    .line 3009
    move-result-object v0

    .line 3010
    check-cast v0, Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 3011
    .line 3012
    const-class v5, Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 3013
    .line 3014
    invoke-static {v5, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3015
    .line 3016
    .line 3017
    iget-object v5, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 3018
    .line 3019
    invoke-virtual {v0, v5}, Lcom/android/server/pm/pu/ProfileUtilizationService;->onBootAfterUpdateIfNeeded(Lcom/android/server/pm/PackageManagerService;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_7

    .line 3020
    .line 3021
    .line 3022
    goto/16 :goto_32

    .line 3023
    .line 3024
    :catch_7
    move-exception v0

    .line 3025
    const-string/jumbo v5, "SystemServer"

    .line 3026
    .line 3027
    .line 3028
    const-string v8, "Failure starting PU Service"

    .line 3029
    .line 3030
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3031
    .line 3032
    .line 3033
    :goto_32
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3034
    .line 3035
    .line 3036
    const-string/jumbo v0, "PerformFstrimIfNeeded"

    .line 3037
    .line 3038
    .line 3039
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3040
    .line 3041
    .line 3042
    :try_start_3e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 3043
    .line 3044
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1e

    .line 3045
    .line 3046
    .line 3047
    goto/16 :goto_33

    .line 3048
    .line 3049
    :catchall_1e
    move-exception v0

    .line 3050
    const-string/jumbo v5, "performing fstrim"

    .line 3051
    .line 3052
    .line 3053
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3054
    .line 3055
    .line 3056
    :goto_33
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3057
    .line 3058
    .line 3059
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 3060
    .line 3061
    const/4 v8, 0x1

    .line 3062
    if-ne v0, v8, :cond_21

    .line 3063
    .line 3064
    move-object/from16 v27, v3

    .line 3065
    .line 3066
    move/from16 v3, v16

    .line 3067
    .line 3068
    const/4 v5, 0x0

    .line 3069
    const/4 v8, 0x0

    .line 3070
    const/4 v9, 0x0

    .line 3071
    const/4 v10, 0x0

    .line 3072
    const/4 v11, 0x0

    .line 3073
    const/4 v12, 0x0

    .line 3074
    const/4 v14, 0x0

    .line 3075
    const/4 v15, 0x0

    .line 3076
    const/16 v16, 0x0

    .line 3077
    .line 3078
    const/16 v22, 0x0

    .line 3079
    .line 3080
    const/16 v29, 0x0

    .line 3081
    .line 3082
    :goto_34
    const/16 v21, 0x0

    .line 3083
    .line 3084
    goto/16 :goto_89

    .line 3085
    .line 3086
    :cond_21
    const-string/jumbo v0, "StartLockSettingsService"

    .line 3087
    .line 3088
    .line 3089
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3090
    .line 3091
    .line 3092
    :try_start_3f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3093
    .line 3094
    const-class v5, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    .line 3095
    .line 3096
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3097
    .line 3098
    .line 3099
    const-string/jumbo v0, "lock_settings"

    .line 3100
    .line 3101
    .line 3102
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 3103
    .line 3104
    .line 3105
    move-result-object v0

    .line 3106
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 3107
    .line 3108
    .line 3109
    move-result-object v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1f

    .line 3110
    move-object v5, v0

    .line 3111
    goto/16 :goto_35

    .line 3112
    .line 3113
    :catchall_1f
    move-exception v0

    .line 3114
    const-string/jumbo v5, "starting LockSettingsService service"

    .line 3115
    .line 3116
    .line 3117
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3118
    .line 3119
    .line 3120
    const/4 v5, 0x0

    .line 3121
    :goto_35
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3122
    .line 3123
    .line 3124
    const-string/jumbo v0, "ro.frp.pst"

    .line 3125
    .line 3126
    .line 3127
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 3128
    .line 3129
    .line 3130
    move-result-object v0

    .line 3131
    const-string v8, ""

    .line 3132
    .line 3133
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3134
    .line 3135
    .line 3136
    move-result v0

    .line 3137
    if-nez v0, :cond_22

    .line 3138
    .line 3139
    const-string/jumbo v8, "StartPersistentDataBlock"

    .line 3140
    .line 3141
    .line 3142
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3143
    .line 3144
    .line 3145
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3146
    .line 3147
    const-class v11, Lcom/android/server/pdb/PersistentDataBlockService;

    .line 3148
    .line 3149
    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3150
    .line 3151
    .line 3152
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3153
    .line 3154
    .line 3155
    :cond_22
    sget-boolean v8, Landroid/os/Build;->IS_ARC:Z

    .line 3156
    .line 3157
    if-eqz v8, :cond_23

    .line 3158
    .line 3159
    const-string/jumbo v8, "ro.boot.dev_mode"

    .line 3160
    .line 3161
    .line 3162
    const/4 v11, 0x0

    .line 3163
    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 3164
    .line 3165
    .line 3166
    move-result v8

    .line 3167
    const/4 v11, 0x1

    .line 3168
    if-ne v8, v11, :cond_23

    .line 3169
    .line 3170
    const-string/jumbo v8, "StartArcPersistentDataBlock"

    .line 3171
    .line 3172
    .line 3173
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3174
    .line 3175
    .line 3176
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3177
    .line 3178
    const-string/jumbo v11, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    .line 3179
    .line 3180
    .line 3181
    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3182
    .line 3183
    .line 3184
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3185
    .line 3186
    .line 3187
    :cond_23
    const-string/jumbo v8, "StartTestHarnessMode"

    .line 3188
    .line 3189
    .line 3190
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3191
    .line 3192
    .line 3193
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3194
    .line 3195
    const-class v11, Lcom/android/server/testharness/TestHarnessModeService;

    .line 3196
    .line 3197
    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3198
    .line 3199
    .line 3200
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3201
    .line 3202
    .line 3203
    if-eqz v0, :cond_24

    .line 3204
    .line 3205
    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    .line 3206
    .line 3207
    .line 3208
    move-result v0

    .line 3209
    if-eqz v0, :cond_25

    .line 3210
    .line 3211
    :cond_24
    const-string/jumbo v0, "StartOemLockService"

    .line 3212
    .line 3213
    .line 3214
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3215
    .line 3216
    .line 3217
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3218
    .line 3219
    const-class v8, Lcom/android/server/oemlock/OemLockService;

    .line 3220
    .line 3221
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3222
    .line 3223
    .line 3224
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3225
    .line 3226
    .line 3227
    :cond_25
    const-string/jumbo v0, "StartDeviceIdleController"

    .line 3228
    .line 3229
    .line 3230
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3231
    .line 3232
    .line 3233
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3234
    .line 3235
    const-class v8, Lcom/android/server/DeviceIdleController;

    .line 3236
    .line 3237
    const-string/jumbo v11, "StartDevicePolicyManager"

    .line 3238
    .line 3239
    .line 3240
    invoke-static {v0, v8, v2, v11}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 3241
    .line 3242
    .line 3243
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3244
    .line 3245
    const-class v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 3246
    .line 3247
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3248
    .line 3249
    .line 3250
    move-result-object v0

    .line 3251
    move-object v8, v0

    .line 3252
    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 3253
    .line 3254
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3255
    .line 3256
    .line 3257
    const-string/jumbo v0, "StartStatusBarManagerService"

    .line 3258
    .line 3259
    .line 3260
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3261
    .line 3262
    .line 3263
    :try_start_40
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    .line 3264
    .line 3265
    invoke-direct {v0, v7}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V

    .line 3266
    .line 3267
    .line 3268
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    .line 3269
    .line 3270
    .line 3271
    const-string/jumbo v11, "statusbar"
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_21

    .line 3272
    .line 3273
    .line 3274
    const/16 v12, 0x14

    .line 3275
    .line 3276
    move-object/from16 v21, v5

    .line 3277
    .line 3278
    const/4 v5, 0x0

    .line 3279
    :try_start_41
    invoke-static {v11, v0, v5, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_20

    .line 3280
    .line 3281
    .line 3282
    goto/16 :goto_37

    .line 3283
    .line 3284
    :catchall_20
    move-exception v0

    .line 3285
    goto/16 :goto_36

    .line 3286
    .line 3287
    :catchall_21
    move-exception v0

    .line 3288
    move-object/from16 v21, v5

    .line 3289
    .line 3290
    :goto_36
    const-string/jumbo v5, "starting StatusBarManagerService"

    .line 3291
    .line 3292
    .line 3293
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3294
    .line 3295
    .line 3296
    :goto_37
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3297
    .line 3298
    .line 3299
    const v0, 0x1040337

    .line 3300
    .line 3301
    .line 3302
    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3303
    .line 3304
    .line 3305
    move-result v0

    .line 3306
    if-eqz v0, :cond_26

    .line 3307
    .line 3308
    const-string/jumbo v0, "StartMusicRecognitionManagerService"

    .line 3309
    .line 3310
    .line 3311
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3312
    .line 3313
    .line 3314
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3315
    .line 3316
    const-class v5, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 3317
    .line 3318
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3319
    .line 3320
    .line 3321
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3322
    .line 3323
    .line 3324
    goto/16 :goto_38

    .line 3325
    .line 3326
    :cond_26
    const-string/jumbo v0, "SystemServer"

    .line 3327
    .line 3328
    .line 3329
    const-string/jumbo v5, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    .line 3330
    .line 3331
    .line 3332
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    .line 3334
    .line 3335
    :goto_38
    const-string/jumbo v0, "StartEnterpriseDeviceManagerService"

    .line 3336
    .line 3337
    .line 3338
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3339
    .line 3340
    .line 3341
    :try_start_42
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3342
    .line 3343
    const-class v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;

    .line 3344
    .line 3345
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3346
    .line 3347
    .line 3348
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 3349
    .line 3350
    .line 3351
    move-result-object v0

    .line 3352
    iput-object v0, v1, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 3353
    .line 3354
    const-string/jumbo v0, "SystemServer"

    .line 3355
    .line 3356
    .line 3357
    const-string v5, "Enterprise Policy manager service created..."

    .line 3358
    .line 3359
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_22

    .line 3360
    .line 3361
    .line 3362
    goto/16 :goto_39

    .line 3363
    .line 3364
    :catchall_22
    move-exception v0

    .line 3365
    const-string/jumbo v5, "starting EnterpriseDeviceManagerService"

    .line 3366
    .line 3367
    .line 3368
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3369
    .line 3370
    .line 3371
    :goto_39
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3372
    .line 3373
    .line 3374
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    .line 3375
    .line 3376
    .line 3377
    move-result v0

    .line 3378
    if-lez v0, :cond_27

    .line 3379
    .line 3380
    :try_start_43
    const-string/jumbo v0, "[KnoxAnalytics] System Service"

    .line 3381
    .line 3382
    .line 3383
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3384
    .line 3385
    .line 3386
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3387
    .line 3388
    const-class v5, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 3389
    .line 3390
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3391
    .line 3392
    .line 3393
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_23

    .line 3394
    .line 3395
    .line 3396
    goto/16 :goto_3a

    .line 3397
    .line 3398
    :catchall_23
    move-exception v0

    .line 3399
    const-string/jumbo v5, "SystemServer"

    .line 3400
    .line 3401
    .line 3402
    const-string/jumbo v11, "[KnoxAnalytics] Failure starting System Service"

    .line 3403
    .line 3404
    .line 3405
    invoke-static {v5, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3406
    .line 3407
    .line 3408
    goto/16 :goto_3a

    .line 3409
    .line 3410
    :cond_27
    const-string/jumbo v0, "SystemServer"

    .line 3411
    .line 3412
    .line 3413
    const-string v5, "KnoxAnalyticsSystemService not defined by OEM"

    .line 3414
    .line 3415
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    .line 3417
    .line 3418
    :goto_3a
    const-string v0, "KnoxCustom Policy"

    .line 3419
    .line 3420
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3421
    .line 3422
    .line 3423
    :try_start_44
    new-instance v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 3424
    .line 3425
    invoke-direct {v0, v7}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V

    .line 3426
    .line 3427
    .line 3428
    iput-object v0, v1, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 3429
    .line 3430
    const-string/jumbo v5, "knoxcustom"

    .line 3431
    .line 3432
    .line 3433
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3434
    .line 3435
    .line 3436
    const-string/jumbo v0, "knoxcustom"

    .line 3437
    .line 3438
    .line 3439
    iget-object v5, v1, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 3440
    .line 3441
    invoke-static {v0, v5}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3442
    .line 3443
    .line 3444
    const-string/jumbo v0, "SystemServer"

    .line 3445
    .line 3446
    .line 3447
    const-string v5, "KnoxCustom Policy added."

    .line 3448
    .line 3449
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_24

    .line 3450
    .line 3451
    .line 3452
    goto/16 :goto_3b

    .line 3453
    .line 3454
    :catchall_24
    move-exception v0

    .line 3455
    const-string/jumbo v5, "SystemServer"

    .line 3456
    .line 3457
    .line 3458
    const-string v11, "Fail KnoxCustom Policy."

    .line 3459
    .line 3460
    invoke-static {v5, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3461
    .line 3462
    .line 3463
    :goto_3b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3464
    .line 3465
    .line 3466
    const-string/jumbo v0, "SystemServer"

    .line 3467
    .line 3468
    .line 3469
    const-string v5, "DarManagerService"

    .line 3470
    .line 3471
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    .line 3473
    .line 3474
    const-string v0, "DarManagerService"

    .line 3475
    .line 3476
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3477
    .line 3478
    .line 3479
    :try_start_45
    const-string/jumbo v0, "dar"

    .line 3480
    .line 3481
    .line 3482
    new-instance v5, Lcom/android/server/SystemServer$5;

    .line 3483
    .line 3484
    const/4 v11, 0x4

    .line 3485
    invoke-direct {v5, v11}, Lcom/android/server/SystemServer$5;-><init>(I)V

    .line 3486
    .line 3487
    .line 3488
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_25

    .line 3489
    .line 3490
    .line 3491
    goto/16 :goto_3c

    .line 3492
    .line 3493
    :catchall_25
    move-exception v0

    .line 3494
    const-string v5, "Failure starting DarManagerService"

    .line 3495
    .line 3496
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3497
    .line 3498
    .line 3499
    :goto_3c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3500
    .line 3501
    .line 3502
    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3503
    .line 3504
    .line 3505
    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3506
    .line 3507
    .line 3508
    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3509
    .line 3510
    .line 3511
    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3512
    .line 3513
    .line 3514
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3515
    .line 3516
    .line 3517
    if-eqz v13, :cond_28

    .line 3518
    .line 3519
    const-string/jumbo v0, "SystemServer"

    .line 3520
    .line 3521
    .line 3522
    const-string/jumbo v5, "Not starting WearableSensingService"

    .line 3523
    .line 3524
    .line 3525
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    .line 3527
    .line 3528
    goto/16 :goto_3d

    .line 3529
    .line 3530
    :cond_28
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3531
    .line 3532
    .line 3533
    :goto_3d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3534
    .line 3535
    .line 3536
    const v0, 0x104031d

    .line 3537
    .line 3538
    .line 3539
    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3540
    .line 3541
    .line 3542
    move-result v0

    .line 3543
    if-eqz v0, :cond_29

    .line 3544
    .line 3545
    const-string/jumbo v0, "StartAmbientContextService"

    .line 3546
    .line 3547
    .line 3548
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3549
    .line 3550
    .line 3551
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3552
    .line 3553
    const-class v5, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 3554
    .line 3555
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3556
    .line 3557
    .line 3558
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3559
    .line 3560
    .line 3561
    goto/16 :goto_3e

    .line 3562
    .line 3563
    :cond_29
    const-string/jumbo v0, "SystemServer"

    .line 3564
    .line 3565
    .line 3566
    const-string v5, "AmbientContextManagerService not defined by OEM or disabled by flag"

    .line 3567
    .line 3568
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    .line 3570
    .line 3571
    :goto_3e
    const-string/jumbo v0, "StartSpeechRecognitionManagerService"

    .line 3572
    .line 3573
    .line 3574
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3575
    .line 3576
    .line 3577
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3578
    .line 3579
    const-class v5, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 3580
    .line 3581
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3582
    .line 3583
    .line 3584
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3585
    .line 3586
    .line 3587
    const v0, 0x104031e

    .line 3588
    .line 3589
    .line 3590
    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3591
    .line 3592
    .line 3593
    move-result v0

    .line 3594
    if-eqz v0, :cond_2a

    .line 3595
    .line 3596
    const-string/jumbo v0, "StartAppPredictionService"

    .line 3597
    .line 3598
    .line 3599
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3600
    .line 3601
    .line 3602
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3603
    .line 3604
    const-class v5, Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 3605
    .line 3606
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3607
    .line 3608
    .line 3609
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3610
    .line 3611
    .line 3612
    goto/16 :goto_3f

    .line 3613
    .line 3614
    :cond_2a
    const-string/jumbo v0, "SystemServer"

    .line 3615
    .line 3616
    .line 3617
    const-string v5, "AppPredictionService not defined by OEM"

    .line 3618
    .line 3619
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    .line 3621
    .line 3622
    :goto_3f
    const v0, 0x1040327

    .line 3623
    .line 3624
    .line 3625
    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3626
    .line 3627
    .line 3628
    move-result v0

    .line 3629
    if-eqz v0, :cond_2b

    .line 3630
    .line 3631
    const-string/jumbo v0, "StartContentSuggestionsService"

    .line 3632
    .line 3633
    .line 3634
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3635
    .line 3636
    .line 3637
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3638
    .line 3639
    const-class v5, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 3640
    .line 3641
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3642
    .line 3643
    .line 3644
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3645
    .line 3646
    .line 3647
    goto/16 :goto_40

    .line 3648
    .line 3649
    :cond_2b
    const-string/jumbo v0, "SystemServer"

    .line 3650
    .line 3651
    .line 3652
    const-string v5, "ContentSuggestionsService not defined by OEM"

    .line 3653
    .line 3654
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    .line 3656
    .line 3657
    :goto_40
    :try_start_46
    const-string/jumbo v0, "SemClipboardService"

    .line 3658
    .line 3659
    .line 3660
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3661
    .line 3662
    .line 3663
    const-string/jumbo v0, "SystemServer"

    .line 3664
    .line 3665
    .line 3666
    const-string/jumbo v5, "SemClipboardService"

    .line 3667
    .line 3668
    .line 3669
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    .line 3671
    .line 3672
    const-string/jumbo v0, "semclipboard"

    .line 3673
    .line 3674
    .line 3675
    new-instance v5, Lcom/android/server/semclipboard/SemClipboardService;

    .line 3676
    .line 3677
    invoke-direct {v5, v7}, Lcom/android/server/semclipboard/SemClipboardService;-><init>(Landroid/content/Context;)V

    .line 3678
    .line 3679
    .line 3680
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_26

    .line 3681
    .line 3682
    .line 3683
    :goto_41
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3684
    .line 3685
    .line 3686
    goto/16 :goto_42

    .line 3687
    .line 3688
    :catchall_26
    move-exception v0

    .line 3689
    :try_start_47
    const-string/jumbo v5, "starting SemClipboardService"

    .line 3690
    .line 3691
    .line 3692
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_6b

    .line 3693
    .line 3694
    .line 3695
    goto :goto_41

    .line 3696
    :goto_42
    const v0, 0x1040343

    .line 3697
    .line 3698
    .line 3699
    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3700
    .line 3701
    .line 3702
    move-result v0

    .line 3703
    if-eqz v0, :cond_2c

    .line 3704
    .line 3705
    const-string/jumbo v0, "StartSearchUiService"

    .line 3706
    .line 3707
    .line 3708
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3709
    .line 3710
    .line 3711
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3712
    .line 3713
    const-class v5, Lcom/android/server/searchui/SearchUiManagerService;

    .line 3714
    .line 3715
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3716
    .line 3717
    .line 3718
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3719
    .line 3720
    .line 3721
    :cond_2c
    const v0, 0x1040346

    .line 3722
    .line 3723
    .line 3724
    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3725
    .line 3726
    .line 3727
    move-result v0

    .line 3728
    if-eqz v0, :cond_2d

    .line 3729
    .line 3730
    const-string/jumbo v0, "StartSmartspaceService"

    .line 3731
    .line 3732
    .line 3733
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3734
    .line 3735
    .line 3736
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3737
    .line 3738
    const-class v5, Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 3739
    .line 3740
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3741
    .line 3742
    .line 3743
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3744
    .line 3745
    .line 3746
    goto/16 :goto_43

    .line 3747
    .line 3748
    :cond_2d
    const-string/jumbo v0, "SystemServer"

    .line 3749
    .line 3750
    .line 3751
    const-string/jumbo v5, "SmartspaceManagerService not defined by OEM or disabled by flag"

    .line 3752
    .line 3753
    .line 3754
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    .line 3756
    .line 3757
    :goto_43
    const v0, 0x104032b

    .line 3758
    .line 3759
    .line 3760
    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3761
    .line 3762
    .line 3763
    move-result v0

    .line 3764
    if-eqz v0, :cond_2e

    .line 3765
    .line 3766
    const-string/jumbo v0, "StartContextualSearchService"

    .line 3767
    .line 3768
    .line 3769
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3770
    .line 3771
    .line 3772
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3773
    .line 3774
    const-class v5, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 3775
    .line 3776
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3777
    .line 3778
    .line 3779
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3780
    .line 3781
    .line 3782
    goto/16 :goto_44

    .line 3783
    .line 3784
    :cond_2e
    const-string/jumbo v0, "SystemServer"

    .line 3785
    .line 3786
    .line 3787
    const-string v5, "ContextualSearchManagerService not defined or disabled by flag"

    .line 3788
    .line 3789
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    .line 3791
    .line 3792
    :goto_44
    :try_start_48
    const-string/jumbo v0, "StartSemContextService"

    .line 3793
    .line 3794
    .line 3795
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3796
    .line 3797
    .line 3798
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3799
    .line 3800
    .line 3801
    move-result-object v0

    .line 3802
    const-string/jumbo v5, "com.sec.feature.sensorhub"

    .line 3803
    .line 3804
    .line 3805
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3806
    .line 3807
    .line 3808
    move-result v0

    .line 3809
    if-nez v0, :cond_2f

    .line 3810
    .line 3811
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3812
    .line 3813
    .line 3814
    move-result-object v0

    .line 3815
    const-string/jumbo v5, "com.sec.feature.scontext_lite"

    .line 3816
    .line 3817
    .line 3818
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3819
    .line 3820
    .line 3821
    move-result v0

    .line 3822
    if-eqz v0, :cond_30

    .line 3823
    .line 3824
    goto/16 :goto_45

    .line 3825
    .line 3826
    :catchall_27
    move-exception v0

    .line 3827
    goto/16 :goto_a5

    .line 3828
    .line 3829
    :catch_8
    move-exception v0

    .line 3830
    goto/16 :goto_47

    .line 3831
    .line 3832
    :cond_2f
    :goto_45
    const-string/jumbo v0, "SystemServer"

    .line 3833
    .line 3834
    .line 3835
    const-string/jumbo v5, "SemContextService Service"

    .line 3836
    .line 3837
    .line 3838
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    .line 3840
    .line 3841
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 3842
    .line 3843
    const-string v5, "/system/framework/semcontextservice.jar"

    .line 3844
    .line 3845
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 3846
    .line 3847
    .line 3848
    move-result-object v11

    .line 3849
    invoke-direct {v0, v5, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 3850
    .line 3851
    .line 3852
    const-string/jumbo v5, "com.samsung.android.hardware.context.SemContextService"

    .line 3853
    .line 3854
    .line 3855
    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 3856
    .line 3857
    .line 3858
    move-result-object v0

    .line 3859
    const/4 v11, 0x1

    .line 3860
    new-array v5, v11, [Ljava/lang/Class;

    .line 3861
    .line 3862
    const-class v11, Landroid/content/Context;

    .line 3863
    .line 3864
    const/16 v19, 0x0

    .line 3865
    .line 3866
    aput-object v11, v5, v19

    .line 3867
    .line 3868
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 3869
    .line 3870
    .line 3871
    move-result-object v0

    .line 3872
    const-string/jumbo v5, "scontext"

    .line 3873
    .line 3874
    .line 3875
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 3876
    .line 3877
    .line 3878
    move-result-object v11

    .line 3879
    invoke-virtual {v0, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 3880
    .line 3881
    .line 3882
    move-result-object v0

    .line 3883
    check-cast v0, Landroid/os/IBinder;

    .line 3884
    .line 3885
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_8
    .catchall {:try_start_48 .. :try_end_48} :catchall_27

    .line 3886
    .line 3887
    .line 3888
    :cond_30
    :goto_46
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3889
    .line 3890
    .line 3891
    goto/16 :goto_48

    .line 3892
    .line 3893
    :goto_47
    :try_start_49
    const-string/jumbo v5, "SystemServer"

    .line 3894
    .line 3895
    .line 3896
    const-string v11, "Failure starting SemContextService"

    .line 3897
    .line 3898
    invoke-static {v5, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_27

    .line 3899
    .line 3900
    .line 3901
    goto :goto_46

    .line 3902
    :goto_48
    const-string/jumbo v0, "StartMotionRecognitionService"

    .line 3903
    .line 3904
    .line 3905
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3906
    .line 3907
    .line 3908
    :try_start_4a
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3909
    .line 3910
    .line 3911
    move-result-object v0

    .line 3912
    if-eqz v0, :cond_31

    .line 3913
    .line 3914
    const-string/jumbo v5, "com.sec.feature.motionrecognition_service"

    .line 3915
    .line 3916
    .line 3917
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3918
    .line 3919
    .line 3920
    move-result v0

    .line 3921
    if-eqz v0, :cond_31

    .line 3922
    .line 3923
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 3924
    .line 3925
    const-string v5, "/system/framework/motionrecognitionservice.jar"

    .line 3926
    .line 3927
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 3928
    .line 3929
    .line 3930
    move-result-object v11

    .line 3931
    invoke-direct {v0, v5, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 3932
    .line 3933
    .line 3934
    const-string/jumbo v5, "com.samsung.android.gesture.MotionRecognitionService"

    .line 3935
    .line 3936
    .line 3937
    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 3938
    .line 3939
    .line 3940
    move-result-object v0

    .line 3941
    const/4 v11, 0x1

    .line 3942
    new-array v5, v11, [Ljava/lang/Class;

    .line 3943
    .line 3944
    const-class v11, Landroid/content/Context;

    .line 3945
    .line 3946
    const/16 v19, 0x0

    .line 3947
    .line 3948
    aput-object v11, v5, v19

    .line 3949
    .line 3950
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 3951
    .line 3952
    .line 3953
    move-result-object v0

    .line 3954
    const-string/jumbo v5, "motion_recognition"

    .line 3955
    .line 3956
    .line 3957
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 3958
    .line 3959
    .line 3960
    move-result-object v11

    .line 3961
    invoke-virtual {v0, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 3962
    .line 3963
    .line 3964
    move-result-object v0

    .line 3965
    check-cast v0, Landroid/os/IBinder;

    .line 3966
    .line 3967
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3968
    .line 3969
    .line 3970
    const-string/jumbo v0, "SystemServer"

    .line 3971
    .line 3972
    .line 3973
    const-string/jumbo v5, "MotionRecognitionService Service!"

    .line 3974
    .line 3975
    .line 3976
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_9

    .line 3977
    .line 3978
    .line 3979
    goto/16 :goto_49

    .line 3980
    .line 3981
    :catch_9
    move-exception v0

    .line 3982
    const-string/jumbo v5, "SystemServer"

    .line 3983
    .line 3984
    .line 3985
    const-string v11, "Failure starting MotionRecognitionService"

    .line 3986
    .line 3987
    invoke-static {v5, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3988
    .line 3989
    .line 3990
    :cond_31
    :goto_49
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3991
    .line 3992
    .line 3993
    const-string v0, "InitConnectivityModuleConnector"

    .line 3994
    .line 3995
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3996
    .line 3997
    .line 3998
    :try_start_4b
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    .line 3999
    .line 4000
    .line 4001
    move-result-object v0

    .line 4002
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_28

    .line 4003
    .line 4004
    .line 4005
    goto/16 :goto_4a

    .line 4006
    .line 4007
    :catchall_28
    move-exception v0

    .line 4008
    const-string/jumbo v5, "initializing ConnectivityModuleConnector"

    .line 4009
    .line 4010
    .line 4011
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4012
    .line 4013
    .line 4014
    :goto_4a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4015
    .line 4016
    .line 4017
    const-string v0, "InitNetworkStackClient"

    .line 4018
    .line 4019
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4020
    .line 4021
    .line 4022
    :try_start_4c
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    .line 4023
    .line 4024
    .line 4025
    move-result-object v0

    .line 4026
    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_29

    .line 4027
    .line 4028
    .line 4029
    goto/16 :goto_4b

    .line 4030
    .line 4031
    :catchall_29
    move-exception v0

    .line 4032
    const-string/jumbo v5, "initializing NetworkStackClient"

    .line 4033
    .line 4034
    .line 4035
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4036
    .line 4037
    .line 4038
    :goto_4b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4039
    .line 4040
    .line 4041
    const-string/jumbo v0, "StartNetworkManagementService"

    .line 4042
    .line 4043
    .line 4044
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4045
    .line 4046
    .line 4047
    :try_start_4d
    invoke-static {v7}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    .line 4048
    .line 4049
    .line 4050
    move-result-object v5
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2b

    .line 4051
    :try_start_4e
    const-string/jumbo v0, "network_management"

    .line 4052
    .line 4053
    .line 4054
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2a

    .line 4055
    .line 4056
    .line 4057
    goto/16 :goto_4d

    .line 4058
    .line 4059
    :catchall_2a
    move-exception v0

    .line 4060
    goto/16 :goto_4c

    .line 4061
    .line 4062
    :catchall_2b
    move-exception v0

    .line 4063
    const/4 v5, 0x0

    .line 4064
    :goto_4c
    const-string/jumbo v11, "starting NetworkManagement Service"

    .line 4065
    .line 4066
    .line 4067
    invoke-static {v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4068
    .line 4069
    .line 4070
    :goto_4d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4071
    .line 4072
    .line 4073
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 4074
    .line 4075
    if-eqz v0, :cond_32

    .line 4076
    .line 4077
    const-string/jumbo v0, "StartSpegService"

    .line 4078
    .line 4079
    .line 4080
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4081
    .line 4082
    .line 4083
    :try_start_4f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4084
    .line 4085
    const-class v11, Lcom/android/server/pm/SpegService;

    .line 4086
    .line 4087
    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4088
    .line 4089
    .line 4090
    move-result-object v0

    .line 4091
    check-cast v0, Lcom/android/server/pm/SpegService;

    .line 4092
    .line 4093
    iget-object v11, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 4094
    .line 4095
    invoke-virtual {v0, v11}, Lcom/android/server/pm/SpegService;->init(Lcom/android/server/pm/PackageManagerService;)V

    .line 4096
    .line 4097
    .line 4098
    const-class v11, Lcom/android/server/pm/SpegService;

    .line 4099
    .line 4100
    invoke-static {v11, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_a

    .line 4101
    .line 4102
    .line 4103
    goto/16 :goto_4e

    .line 4104
    .line 4105
    :catch_a
    move-exception v0

    .line 4106
    const-string/jumbo v11, "SystemServer"

    .line 4107
    .line 4108
    .line 4109
    const-string v12, "Failure starting SpegService helper"

    .line 4110
    .line 4111
    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4112
    .line 4113
    .line 4114
    :goto_4e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4115
    .line 4116
    .line 4117
    :cond_32
    const-string/jumbo v0, "StartFontManagerService"

    .line 4118
    .line 4119
    .line 4120
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4121
    .line 4122
    .line 4123
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4124
    .line 4125
    new-instance v11, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    .line 4126
    .line 4127
    invoke-direct {v11, v7, v6}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    .line 4128
    .line 4129
    .line 4130
    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 4131
    .line 4132
    .line 4133
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4134
    .line 4135
    .line 4136
    if-eqz v13, :cond_33

    .line 4137
    .line 4138
    goto/16 :goto_4f

    .line 4139
    .line 4140
    :cond_33
    const-string/jumbo v0, "StartTextServicesManager"

    .line 4141
    .line 4142
    .line 4143
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4144
    .line 4145
    .line 4146
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4147
    .line 4148
    const-class v11, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    .line 4149
    .line 4150
    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4151
    .line 4152
    .line 4153
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4154
    .line 4155
    .line 4156
    :goto_4f
    if-nez v9, :cond_34

    .line 4157
    .line 4158
    const-string/jumbo v0, "StartTextClassificationManagerService"

    .line 4159
    .line 4160
    .line 4161
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4162
    .line 4163
    .line 4164
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4165
    .line 4166
    const-class v9, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 4167
    .line 4168
    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4169
    .line 4170
    .line 4171
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4172
    .line 4173
    .line 4174
    :cond_34
    const-string/jumbo v0, "StartNetworkScoreService"

    .line 4175
    .line 4176
    .line 4177
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4178
    .line 4179
    .line 4180
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4181
    .line 4182
    const-class v9, Lcom/android/server/NetworkScoreService$Lifecycle;

    .line 4183
    .line 4184
    const-string/jumbo v11, "StartNetworkStatsService"

    .line 4185
    .line 4186
    .line 4187
    invoke-static {v0, v9, v2, v11}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 4188
    .line 4189
    .line 4190
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4191
    .line 4192
    const-string/jumbo v9, "com.android.server.NetworkStatsServiceInitializer"

    .line 4193
    .line 4194
    .line 4195
    const-string v11, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 4196
    .line 4197
    invoke-virtual {v0, v9, v11}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4198
    .line 4199
    .line 4200
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4201
    .line 4202
    .line 4203
    const-string/jumbo v0, "StartNetworkPolicyManagerService"

    .line 4204
    .line 4205
    .line 4206
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4207
    .line 4208
    .line 4209
    :try_start_50
    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 4210
    .line 4211
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 4212
    .line 4213
    invoke-direct {v9, v7, v0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/server/net/NetworkManagementService;)V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_2d

    .line 4214
    .line 4215
    .line 4216
    :try_start_51
    const-string/jumbo v0, "netpolicy"

    .line 4217
    .line 4218
    .line 4219
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_2c

    .line 4220
    .line 4221
    .line 4222
    goto/16 :goto_52

    .line 4223
    .line 4224
    :catchall_2c
    move-exception v0

    .line 4225
    goto/16 :goto_51

    .line 4226
    .line 4227
    :goto_50
    const/4 v9, 0x0

    .line 4228
    goto/16 :goto_51

    .line 4229
    .line 4230
    :catchall_2d
    move-exception v0

    .line 4231
    goto :goto_50

    .line 4232
    :goto_51
    const-string/jumbo v11, "starting NetworkPolicy Service"

    .line 4233
    .line 4234
    .line 4235
    invoke-static {v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4236
    .line 4237
    .line 4238
    :goto_52
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4239
    .line 4240
    .line 4241
    const-string/jumbo v0, "StartUrspService"

    .line 4242
    .line 4243
    .line 4244
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4245
    .line 4246
    .line 4247
    :try_start_52
    new-instance v11, Lcom/android/server/net/UrspService;

    .line 4248
    .line 4249
    invoke-direct {v11, v7}, Lcom/android/server/net/UrspService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_2f

    .line 4250
    .line 4251
    .line 4252
    :try_start_53
    const-string/jumbo v0, "urspservice"

    .line 4253
    .line 4254
    .line 4255
    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_2e

    .line 4256
    .line 4257
    .line 4258
    goto/16 :goto_54

    .line 4259
    .line 4260
    :catchall_2e
    move-exception v0

    .line 4261
    goto/16 :goto_53

    .line 4262
    .line 4263
    :catchall_2f
    move-exception v0

    .line 4264
    const/4 v11, 0x0

    .line 4265
    :goto_53
    const-string/jumbo v12, "starting URSP Service"

    .line 4266
    .line 4267
    .line 4268
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4269
    .line 4270
    .line 4271
    :goto_54
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4272
    .line 4273
    .line 4274
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4275
    .line 4276
    .line 4277
    move-result-object v0

    .line 4278
    const-string/jumbo v12, "android.hardware.wifi"

    .line 4279
    .line 4280
    .line 4281
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4282
    .line 4283
    .line 4284
    move-result v0

    .line 4285
    if-eqz v0, :cond_35

    .line 4286
    .line 4287
    const-string/jumbo v0, "StartWifi"

    .line 4288
    .line 4289
    .line 4290
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4291
    .line 4292
    .line 4293
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4294
    .line 4295
    const-string/jumbo v12, "com.android.server.wifi.WifiService"

    .line 4296
    .line 4297
    .line 4298
    move-object/from16 v27, v5

    .line 4299
    .line 4300
    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4301
    .line 4302
    invoke-virtual {v0, v12, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4303
    .line 4304
    .line 4305
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4306
    .line 4307
    .line 4308
    const-string/jumbo v0, "StartWifiScanning"

    .line 4309
    .line 4310
    .line 4311
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4312
    .line 4313
    .line 4314
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4315
    .line 4316
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    .line 4317
    .line 4318
    .line 4319
    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4320
    .line 4321
    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4322
    .line 4323
    .line 4324
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4325
    .line 4326
    .line 4327
    goto/16 :goto_55

    .line 4328
    .line 4329
    :cond_35
    move-object/from16 v27, v5

    .line 4330
    .line 4331
    :goto_55
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4332
    .line 4333
    .line 4334
    move-result-object v0

    .line 4335
    const v5, 0x111013d

    .line 4336
    .line 4337
    .line 4338
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 4339
    .line 4340
    .line 4341
    move-result v0

    .line 4342
    if-eqz v0, :cond_36

    .line 4343
    .line 4344
    const-string/jumbo v0, "StartWifiUsd"

    .line 4345
    .line 4346
    .line 4347
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4348
    .line 4349
    .line 4350
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4351
    .line 4352
    const-string/jumbo v5, "com.android.server.wifi.usd.UsdService"

    .line 4353
    .line 4354
    .line 4355
    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4356
    .line 4357
    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4358
    .line 4359
    .line 4360
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4361
    .line 4362
    .line 4363
    :cond_36
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4364
    .line 4365
    .line 4366
    move-result-object v0

    .line 4367
    const-string/jumbo v5, "android.hardware.wifi.rtt"

    .line 4368
    .line 4369
    .line 4370
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4371
    .line 4372
    .line 4373
    move-result v0

    .line 4374
    if-eqz v0, :cond_37

    .line 4375
    .line 4376
    const-string/jumbo v0, "StartRttService"

    .line 4377
    .line 4378
    .line 4379
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4380
    .line 4381
    .line 4382
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4383
    .line 4384
    const-string/jumbo v5, "com.android.server.wifi.rtt.RttService"

    .line 4385
    .line 4386
    .line 4387
    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4388
    .line 4389
    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4390
    .line 4391
    .line 4392
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4393
    .line 4394
    .line 4395
    :cond_37
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4396
    .line 4397
    .line 4398
    move-result-object v0

    .line 4399
    const-string/jumbo v5, "android.hardware.wifi.aware"

    .line 4400
    .line 4401
    .line 4402
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4403
    .line 4404
    .line 4405
    move-result v0

    .line 4406
    if-eqz v0, :cond_38

    .line 4407
    .line 4408
    const-string/jumbo v0, "StartWifiAware"

    .line 4409
    .line 4410
    .line 4411
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4412
    .line 4413
    .line 4414
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4415
    .line 4416
    const-string/jumbo v5, "com.android.server.wifi.aware.WifiAwareService"

    .line 4417
    .line 4418
    .line 4419
    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4420
    .line 4421
    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4422
    .line 4423
    .line 4424
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4425
    .line 4426
    .line 4427
    :cond_38
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4428
    .line 4429
    .line 4430
    move-result-object v0

    .line 4431
    const-string/jumbo v5, "android.hardware.wifi.direct"

    .line 4432
    .line 4433
    .line 4434
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4435
    .line 4436
    .line 4437
    move-result v0

    .line 4438
    if-eqz v0, :cond_39

    .line 4439
    .line 4440
    const-string/jumbo v0, "StartWifiP2P"

    .line 4441
    .line 4442
    .line 4443
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4444
    .line 4445
    .line 4446
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4447
    .line 4448
    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    .line 4449
    .line 4450
    .line 4451
    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4452
    .line 4453
    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4454
    .line 4455
    .line 4456
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4457
    .line 4458
    .line 4459
    :cond_39
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4460
    .line 4461
    .line 4462
    move-result-object v0

    .line 4463
    const-string/jumbo v5, "android.hardware.lowpan"

    .line 4464
    .line 4465
    .line 4466
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4467
    .line 4468
    .line 4469
    move-result v0

    .line 4470
    if-eqz v0, :cond_3a

    .line 4471
    .line 4472
    const-string/jumbo v0, "StartLowpan"

    .line 4473
    .line 4474
    .line 4475
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4476
    .line 4477
    .line 4478
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4479
    .line 4480
    const-string/jumbo v5, "com.android.server.lowpan.LowpanService"

    .line 4481
    .line 4482
    .line 4483
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4484
    .line 4485
    .line 4486
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4487
    .line 4488
    .line 4489
    :cond_3a
    const-string/jumbo v0, "StartPacProxyService"

    .line 4490
    .line 4491
    .line 4492
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4493
    .line 4494
    .line 4495
    :try_start_54
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    .line 4496
    .line 4497
    invoke-direct {v0, v7}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V

    .line 4498
    .line 4499
    .line 4500
    const-string/jumbo v5, "pac_proxy"

    .line 4501
    .line 4502
    .line 4503
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_30

    .line 4504
    .line 4505
    .line 4506
    goto/16 :goto_56

    .line 4507
    .line 4508
    :catchall_30
    move-exception v0

    .line 4509
    const-string/jumbo v5, "starting PacProxyService"

    .line 4510
    .line 4511
    .line 4512
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4513
    .line 4514
    .line 4515
    :goto_56
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4516
    .line 4517
    .line 4518
    const-string/jumbo v0, "StartIntelligentBatterySaverService"

    .line 4519
    .line 4520
    .line 4521
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4522
    .line 4523
    .line 4524
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 4525
    .line 4526
    invoke-direct {v0, v7}, Lcom/android/server/ibs/IntelligentBatterySaverService;-><init>(Landroid/content/Context;)V

    .line 4527
    .line 4528
    .line 4529
    const-string v5, "IntelligentBatterySaverService"

    .line 4530
    .line 4531
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4532
    .line 4533
    .line 4534
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4535
    .line 4536
    .line 4537
    goto :cond_3b
    .line 4542
    .line 4543
    const-string/jumbo v0, "StartKnoxGuard"

    .line 4544
    .line 4545
    .line 4546
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4547
    .line 4548
    .line 4549
    :try_start_55
    const-string/jumbo v0, "knoxguard_service"

    .line 4550
    .line 4551
    .line 4552
    new-instance v5, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;

    .line 4553
    .line 4554
    invoke-direct {v5, v7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;-><init>(Landroid/content/Context;)V

    .line 4555
    .line 4556
    .line 4557
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_31

    .line 4558
    .line 4559
    .line 4560
    goto/16 :goto_57

    .line 4561
    .line 4562
    :catchall_31
    move-exception v0

    .line 4563
    const-string/jumbo v5, "SystemServer"

    .line 4564
    .line 4565
    .line 4566
    const-string v12, "Failed to add KnoxGuardService."

    .line 4567
    .line 4568
    invoke-static {v5, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    .line 4570
    .line 4571
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4572
    .line 4573
    .line 4574
    :goto_57
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4575
    .line 4576
    .line 4577
    :cond_3b
    const-string/jumbo v0, "StartConnectivityService"

    .line 4578
    .line 4579
    .line 4580
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4581
    .line 4582
    .line 4583
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4584
    .line 4585
    const-string/jumbo v5, "com.android.server.ConnectivityServiceInitializer"

    .line 4586
    .line 4587
    .line 4588
    const-string v12, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 4589
    .line 4590
    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4591
    .line 4592
    .line 4593
    invoke-virtual {v9}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 4594
    .line 4595
    .line 4596
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4597
    .line 4598
    .line 4599
    const-string/jumbo v0, "StartExtendedEthernetService"

    .line 4600
    .line 4601
    .line 4602
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4603
    .line 4604
    .line 4605
    :try_start_56
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4606
    .line 4607
    const-class v5, Lcom/android/server/ExtendedEthernetService;

    .line 4608
    .line 4609
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_32

    .line 4610
    .line 4611
    .line 4612
    goto/16 :goto_58

    .line 4613
    .line 4614
    :catchall_32
    move-exception v0

    .line 4615
    const-string/jumbo v5, "SystemServer"

    .line 4616
    .line 4617
    .line 4618
    const-string v12, "Failed to start ExtendedEthernetService."

    .line 4619
    .line 4620
    invoke-static {v5, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4621
    .line 4622
    .line 4623
    :goto_58
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4624
    .line 4625
    .line 4626
    const-string/jumbo v0, "StartSecurityStateManagerService"

    .line 4627
    .line 4628
    .line 4629
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4630
    .line 4631
    .line 4632
    :try_start_57
    const-string/jumbo v0, "security_state"

    .line 4633
    .line 4634
    .line 4635
    new-instance v5, Lcom/android/server/SecurityStateManagerService;

    .line 4636
    .line 4637
    invoke-direct {v5, v7}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    .line 4638
    .line 4639
    .line 4640
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_33

    .line 4641
    .line 4642
    .line 4643
    goto/16 :goto_59

    .line 4644
    .line 4645
    :catchall_33
    move-exception v0

    .line 4646
    const-string/jumbo v5, "starting SecurityStateManagerService"

    .line 4647
    .line 4648
    .line 4649
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4650
    .line 4651
    .line 4652
    :goto_59
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4653
    .line 4654
    .line 4655
    if-eqz v13, :cond_3c

    .line 4656
    .line 4657
    const-string/jumbo v0, "SystemServer"

    .line 4658
    .line 4659
    .line 4660
    const-string/jumbo v5, "Not starting VpnManagerService"

    .line 4661
    .line 4662
    .line 4663
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    .line 4665
    .line 4666
    const/4 v5, 0x0

    .line 4667
    goto/16 :goto_5c

    .line 4668
    .line 4669
    :cond_3c
    const-string/jumbo v0, "StartVpnManagerService"

    .line 4670
    .line 4671
    .line 4672
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4673
    .line 4674
    .line 4675
    :try_start_58
    invoke-static {v7}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    .line 4676
    .line 4677
    .line 4678
    move-result-object v5
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_35

    .line 4679
    :try_start_59
    const-string/jumbo v0, "vpn_management"

    .line 4680
    .line 4681
    .line 4682
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_34

    .line 4683
    .line 4684
    .line 4685
    goto/16 :goto_5b

    .line 4686
    .line 4687
    :catchall_34
    move-exception v0

    .line 4688
    goto/16 :goto_5a

    .line 4689
    .line 4690
    :catchall_35
    move-exception v0

    .line 4691
    const/4 v5, 0x0

    .line 4692
    :goto_5a
    const-string/jumbo v12, "starting VPN Manager Service"

    .line 4693
    .line 4694
    .line 4695
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4696
    .line 4697
    .line 4698
    :goto_5b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4699
    .line 4700
    .line 4701
    :goto_5c
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastB()Z

    .line 4702
    .line 4703
    .line 4704
    move-result v0

    .line 4705
    if-nez v0, :cond_3d

    .line 4706
    .line 4707
    const-string/jumbo v0, "StartVcnManagementService"

    .line 4708
    .line 4709
    .line 4710
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4711
    .line 4712
    .line 4713
    :try_start_5a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4714
    .line 4715
    const-string/jumbo v12, "com.android.server.ConnectivityServiceInitializerB"
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_37

    .line 4716
    .line 4717
    .line 4718
    move-object/from16 v28, v5

    .line 4719
    .line 4720
    :try_start_5b
    const-string v5, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 4721
    .line 4722
    invoke-virtual {v0, v12, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_36

    .line 4723
    .line 4724
    .line 4725
    goto/16 :goto_5e

    .line 4726
    .line 4727
    :catchall_36
    move-exception v0

    .line 4728
    goto/16 :goto_5d

    .line 4729
    .line 4730
    :catchall_37
    move-exception v0

    .line 4731
    move-object/from16 v28, v5

    .line 4732
    .line 4733
    :goto_5d
    const-string/jumbo v5, "starting VCN Management Service"

    .line 4734
    .line 4735
    .line 4736
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4737
    .line 4738
    .line 4739
    :goto_5e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4740
    .line 4741
    .line 4742
    goto/16 :goto_5f

    .line 4743
    .line 4744
    :cond_3d
    move-object/from16 v28, v5

    .line 4745
    .line 4746
    :goto_5f
    const-string/jumbo v0, "StartSystemUpdateManagerService"

    .line 4747
    .line 4748
    .line 4749
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4750
    .line 4751
    .line 4752
    :try_start_5c
    const-string/jumbo v0, "system_update"

    .line 4753
    .line 4754
    .line 4755
    new-instance v5, Lcom/android/server/SystemUpdateManagerService;

    .line 4756
    .line 4757
    invoke-direct {v5, v7}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    .line 4758
    .line 4759
    .line 4760
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_38

    .line 4761
    .line 4762
    .line 4763
    goto/16 :goto_60

    .line 4764
    .line 4765
    :catchall_38
    move-exception v0

    .line 4766
    const-string/jumbo v5, "starting SystemUpdateManagerService"

    .line 4767
    .line 4768
    .line 4769
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4770
    .line 4771
    .line 4772
    :goto_60
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4773
    .line 4774
    .line 4775
    const-string/jumbo v0, "StartUpdateLockService"

    .line 4776
    .line 4777
    .line 4778
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4779
    .line 4780
    .line 4781
    :try_start_5d
    const-string/jumbo v0, "updatelock"

    .line 4782
    .line 4783
    .line 4784
    new-instance v5, Lcom/android/server/UpdateLockService;

    .line 4785
    .line 4786
    invoke-direct {v5, v7}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 4787
    .line 4788
    .line 4789
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_39

    .line 4790
    .line 4791
    .line 4792
    goto/16 :goto_61

    .line 4793
    .line 4794
    :catchall_39
    move-exception v0

    .line 4795
    const-string/jumbo v5, "starting UpdateLockService"

    .line 4796
    .line 4797
    .line 4798
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4799
    .line 4800
    .line 4801
    :goto_61
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4802
    .line 4803
    .line 4804
    const-string/jumbo v0, "StartNotificationManager"

    .line 4805
    .line 4806
    .line 4807
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4808
    .line 4809
    .line 4810
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4811
    .line 4812
    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    .line 4813
    .line 4814
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4815
    .line 4816
    .line 4817
    invoke-static {v7}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 4818
    .line 4819
    .line 4820
    invoke-static {v7}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 4821
    .line 4822
    .line 4823
    const-string/jumbo v0, "notification"

    .line 4824
    .line 4825
    .line 4826
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4827
    .line 4828
    .line 4829
    move-result-object v0

    .line 4830
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 4831
    .line 4832
    .line 4833
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4834
    .line 4835
    .line 4836
    const-string/jumbo v0, "StartDeviceMonitor"

    .line 4837
    .line 4838
    .line 4839
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4840
    .line 4841
    .line 4842
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4843
    .line 4844
    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 4845
    .line 4846
    const-string/jumbo v12, "StartTimeDetectorService"

    .line 4847
    .line 4848
    .line 4849
    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 4850
    .line 4851
    .line 4852
    :try_start_5e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4853
    .line 4854
    const-class v5, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    .line 4855
    .line 4856
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_3a

    .line 4857
    .line 4858
    .line 4859
    goto/16 :goto_62

    .line 4860
    .line 4861
    :catchall_3a
    move-exception v0

    .line 4862
    const-string/jumbo v5, "starting TimeDetectorService service"

    .line 4863
    .line 4864
    .line 4865
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4866
    .line 4867
    .line 4868
    :goto_62
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4869
    .line 4870
    .line 4871
    const-string/jumbo v0, "StartLocationManagerService"

    .line 4872
    .line 4873
    .line 4874
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4875
    .line 4876
    .line 4877
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4878
    .line 4879
    const-class v5, Lcom/android/server/location/LocationManagerService$Lifecycle;

    .line 4880
    .line 4881
    const-string/jumbo v12, "StartSLocationService"

    .line 4882
    .line 4883
    .line 4884
    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 4885
    .line 4886
    .line 4887
    :try_start_5f
    const-string/jumbo v0, "SystemServer"

    .line 4888
    .line 4889
    .line 4890
    const-string/jumbo v5, "SLocation Manager"

    .line 4891
    .line 4892
    .line 4893
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4894
    .line 4895
    .line 4896
    const-string/jumbo v0, "com.samsung.android.location.SLocationLoader"

    .line 4897
    .line 4898
    .line 4899
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4900
    .line 4901
    .line 4902
    move-result-object v0

    .line 4903
    const-string/jumbo v5, "getSLocationService"
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_3d

    .line 4904
    .line 4905
    .line 4906
    move-object/from16 v29, v8

    .line 4907
    .line 4908
    const/4 v12, 0x1

    .line 4909
    :try_start_60
    new-array v8, v12, [Ljava/lang/Class;

    .line 4910
    .line 4911
    const-class v12, Landroid/content/Context;

    .line 4912
    .line 4913
    const/16 v19, 0x0

    .line 4914
    .line 4915
    aput-object v12, v8, v19

    .line 4916
    .line 4917
    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 4918
    .line 4919
    .line 4920
    move-result-object v0

    .line 4921
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 4922
    .line 4923
    .line 4924
    move-result-object v5

    .line 4925
    const/4 v8, 0x0

    .line 4926
    invoke-virtual {v0, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4927
    .line 4928
    .line 4929
    move-result-object v0

    .line 4930
    move-object v5, v0

    .line 4931
    check-cast v5, Landroid/os/IBinder;
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_3c

    .line 4932
    .line 4933
    :try_start_61
    const-string/jumbo v0, "sec_location"

    .line 4934
    .line 4935
    .line 4936
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_3b

    .line 4937
    .line 4938
    .line 4939
    :goto_63
    move-object v8, v5

    .line 4940
    goto/16 :goto_66

    .line 4941
    .line 4942
    :catchall_3b
    move-exception v0

    .line 4943
    goto/16 :goto_65

    .line 4944
    .line 4945
    :catchall_3c
    move-exception v0

    .line 4946
    :goto_64
    const/4 v5, 0x0

    .line 4947
    goto/16 :goto_65

    .line 4948
    .line 4949
    :catchall_3d
    move-exception v0

    .line 4950
    move-object/from16 v29, v8

    .line 4951
    .line 4952
    goto :goto_64

    .line 4953
    :goto_65
    const-string/jumbo v8, "Starting SLocationService"

    .line 4954
    .line 4955
    .line 4956
    invoke-static {v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4957
    .line 4958
    .line 4959
    goto :goto_63

    .line 4960
    :goto_66
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4961
    .line 4962
    .line 4963
    const-string/jumbo v0, "SemMdnieManagerService"

    .line 4964
    .line 4965
    .line 4966
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4967
    .line 4968
    .line 4969
    :try_start_62
    const-string/jumbo v0, "SystemServer"

    .line 4970
    .line 4971
    .line 4972
    const-string/jumbo v5, "mDNIe Service"

    .line 4973
    .line 4974
    .line 4975
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    .line 4977
    .line 4978
    const-string/jumbo v0, "com.samsung.android.hardware.display.SemMdnieManagerService"

    .line 4979
    .line 4980
    .line 4981
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4982
    .line 4983
    .line 4984
    const-string/jumbo v0, "mDNIe"

    .line 4985
    .line 4986
    .line 4987
    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 4988
    .line 4989
    invoke-direct {v5, v7}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;-><init>(Landroid/content/Context;)V

    .line 4990
    .line 4991
    .line 4992
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_3e

    .line 4993
    .line 4994
    .line 4995
    goto/16 :goto_67

    .line 4996
    .line 4997
    :catchall_3e
    move-exception v0

    .line 4998
    const-string v5, "Failed To Start Mdnie Service "

    .line 4999
    .line 5000
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5001
    .line 5002
    .line 5003
    :goto_67
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5004
    .line 5005
    .line 5006
    const-string/jumbo v0, "SemDisplaySolution"

    .line 5007
    .line 5008
    .line 5009
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5010
    .line 5011
    .line 5012
    :try_start_63
    const-string/jumbo v0, "SystemServer"

    .line 5013
    .line 5014
    .line 5015
    const-string/jumbo v5, "SemDisplaySolution Service"

    .line 5016
    .line 5017
    .line 5018
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    .line 5020
    .line 5021
    const-string/jumbo v0, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    .line 5022
    .line 5023
    .line 5024
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5025
    .line 5026
    .line 5027
    const-string v0, "DisplaySolution"

    .line 5028
    .line 5029
    new-instance v5, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 5030
    .line 5031
    invoke-direct {v5, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;-><init>(Landroid/content/Context;)V

    .line 5032
    .line 5033
    .line 5034
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_3f

    .line 5035
    .line 5036
    .line 5037
    goto/16 :goto_68

    .line 5038
    .line 5039
    :catchall_3f
    move-exception v0

    .line 5040
    const-string v5, "Failed To Start SemDisplaySolution Service "

    .line 5041
    .line 5042
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5043
    .line 5044
    .line 5045
    :goto_68
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5046
    .line 5047
    .line 5048
    const-string/jumbo v0, "StartMoccaService"

    .line 5049
    .line 5050
    .line 5051
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5052
    .line 5053
    .line 5054
    :try_start_64
    invoke-static {v7}, Lcom/android/server/sensors/mocca/MoccaLoader;->getMoccaService(Landroid/content/Context;)Landroid/os/IBinder;

    .line 5055
    .line 5056
    .line 5057
    move-result-object v5
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_41

    .line 5058
    :try_start_65
    const-string/jumbo v0, "mocca"

    .line 5059
    .line 5060
    .line 5061
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_40

    .line 5062
    .line 5063
    .line 5064
    move-object/from16 v30, v5

    .line 5065
    .line 5066
    goto/16 :goto_6a

    .line 5067
    .line 5068
    :catchall_40
    move-exception v0

    .line 5069
    goto/16 :goto_69

    .line 5070
    .line 5071
    :catchall_41
    move-exception v0

    .line 5072
    const/4 v5, 0x0

    .line 5073
    :goto_69
    new-instance v12, Ljava/lang/StringBuilder;

    .line 5074
    .line 5075
    move-object/from16 v30, v5

    .line 5076
    .line 5077
    const-string/jumbo v5, "Starting MoccaService:"

    .line 5078
    .line 5079
    .line 5080
    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5081
    .line 5082
    .line 5083
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 5084
    .line 5085
    .line 5086
    move-result-object v5

    .line 5087
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5088
    .line 5089
    .line 5090
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5091
    .line 5092
    .line 5093
    move-result-object v5

    .line 5094
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5095
    .line 5096
    .line 5097
    :goto_6a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5098
    .line 5099
    .line 5100
    const-string/jumbo v0, "StartCountryDetectorService"

    .line 5101
    .line 5102
    .line 5103
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5104
    .line 5105
    .line 5106
    :try_start_66
    new-instance v5, Lcom/android/server/CountryDetectorService;

    .line 5107
    .line 5108
    invoke-direct {v5, v7}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_43

    .line 5109
    .line 5110
    .line 5111
    :try_start_67
    const-string/jumbo v0, "country_detector"

    .line 5112
    .line 5113
    .line 5114
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_42

    .line 5115
    .line 5116
    .line 5117
    goto/16 :goto_6c

    .line 5118
    .line 5119
    :catchall_42
    move-exception v0

    .line 5120
    goto/16 :goto_6b

    .line 5121
    .line 5122
    :catchall_43
    move-exception v0

    .line 5123
    const/4 v5, 0x0

    .line 5124
    :goto_6b
    const-string/jumbo v12, "starting Country Detector"

    .line 5125
    .line 5126
    .line 5127
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5128
    .line 5129
    .line 5130
    :goto_6c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5131
    .line 5132
    .line 5133
    const-string/jumbo v0, "StartTimeZoneDetectorService"

    .line 5134
    .line 5135
    .line 5136
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5137
    .line 5138
    .line 5139
    :try_start_68
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5140
    .line 5141
    const-class v12, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    .line 5142
    .line 5143
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_44

    .line 5144
    .line 5145
    .line 5146
    goto/16 :goto_6d

    .line 5147
    .line 5148
    :catchall_44
    move-exception v0

    .line 5149
    const-string/jumbo v12, "starting TimeZoneDetectorService service"

    .line 5150
    .line 5151
    .line 5152
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5153
    .line 5154
    .line 5155
    :goto_6d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5156
    .line 5157
    .line 5158
    const-string/jumbo v0, "StartAltitudeService"

    .line 5159
    .line 5160
    .line 5161
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5162
    .line 5163
    .line 5164
    :try_start_69
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5165
    .line 5166
    const-class v12, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    .line 5167
    .line 5168
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_45

    .line 5169
    .line 5170
    .line 5171
    goto/16 :goto_6e

    .line 5172
    .line 5173
    :catchall_45
    move-exception v0

    .line 5174
    const-string/jumbo v12, "starting AltitudeService service"

    .line 5175
    .line 5176
    .line 5177
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5178
    .line 5179
    .line 5180
    :goto_6e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5181
    .line 5182
    .line 5183
    const-string/jumbo v0, "StartLocationTimeZoneManagerService"

    .line 5184
    .line 5185
    .line 5186
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5187
    .line 5188
    .line 5189
    :try_start_6a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5190
    .line 5191
    const-class v12, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    .line 5192
    .line 5193
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_46

    .line 5194
    .line 5195
    .line 5196
    goto/16 :goto_6f

    .line 5197
    .line 5198
    :catchall_46
    move-exception v0

    .line 5199
    const-string/jumbo v12, "starting LocationTimeZoneManagerService service"

    .line 5200
    .line 5201
    .line 5202
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5203
    .line 5204
    .line 5205
    :goto_6f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5206
    .line 5207
    .line 5208
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5209
    .line 5210
    .line 5211
    move-result-object v0

    .line 5212
    const v12, 0x1110180

    .line 5213
    .line 5214
    .line 5215
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5216
    .line 5217
    .line 5218
    move-result v0

    .line 5219
    if-eqz v0, :cond_3e

    .line 5220
    .line 5221
    const-string/jumbo v0, "StartGnssTimeUpdateService"

    .line 5222
    .line 5223
    .line 5224
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5225
    .line 5226
    .line 5227
    :try_start_6b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5228
    .line 5229
    const-class v12, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    .line 5230
    .line 5231
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_47

    .line 5232
    .line 5233
    .line 5234
    goto/16 :goto_70

    .line 5235
    .line 5236
    :catchall_47
    move-exception v0

    .line 5237
    const-string/jumbo v12, "starting GnssTimeUpdateService service"

    .line 5238
    .line 5239
    .line 5240
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5241
    .line 5242
    .line 5243
    :goto_70
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5244
    .line 5245
    .line 5246
    :cond_3e
    const-string v0, "KnoxVpnService"

    .line 5247
    .line 5248
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5249
    .line 5250
    .line 5251
    :try_start_6c
    iget-object v0, v1, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 5252
    .line 5253
    if-eqz v0, :cond_3f

    .line 5254
    .line 5255
    const-string v0, "Adding KnoxVpnEngineService"

    .line 5256
    .line 5257
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5258
    .line 5259
    .line 5260
    const-string/jumbo v0, "SystemServer"

    .line 5261
    .line 5262
    .line 5263
    const-string v12, "Adding KnoxVpnEngineService"

    .line 5264
    .line 5265
    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    .line 5267
    .line 5268
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 5269
    .line 5270
    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V

    .line 5271
    .line 5272
    .line 5273
    const-string/jumbo v12, "knox_vpn_policy"

    .line 5274
    .line 5275
    .line 5276
    invoke-static {v12, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5277
    .line 5278
    .line 5279
    const-string/jumbo v12, "knox_vpn_policy"

    .line 5280
    .line 5281
    .line 5282
    invoke-static {v12, v0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5283
    .line 5284
    .line 5285
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_48

    .line 5286
    .line 5287
    .line 5288
    goto/16 :goto_71

    .line 5289
    .line 5290
    :catchall_48
    move-exception v0

    .line 5291
    goto/16 :goto_72

    .line 5292
    .line 5293
    :cond_3f
    :goto_71
    move-object/from16 v31, v5

    .line 5294
    .line 5295
    goto/16 :goto_73

    .line 5296
    .line 5297
    :goto_72
    const-string/jumbo v12, "SystemServer"

    .line 5298
    .line 5299
    .line 5300
    move-object/from16 v31, v5

    .line 5301
    .line 5302
    const-string v5, "Failure starting KnoxVpnEngineService"

    .line 5303
    .line 5304
    invoke-static {v12, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5305
    .line 5306
    .line 5307
    :goto_73
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5308
    .line 5309
    .line 5310
    if-nez v13, :cond_40

    .line 5311
    .line 5312
    const-string/jumbo v0, "StartSearchManagerService"

    .line 5313
    .line 5314
    .line 5315
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5316
    .line 5317
    .line 5318
    :try_start_6d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5319
    .line 5320
    const-class v5, Lcom/android/server/search/SearchManagerService$Lifecycle;

    .line 5321
    .line 5322
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_49

    .line 5323
    .line 5324
    .line 5325
    goto/16 :goto_74

    .line 5326
    .line 5327
    :catchall_49
    move-exception v0

    .line 5328
    const-string/jumbo v5, "starting Search Service"

    .line 5329
    .line 5330
    .line 5331
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5332
    .line 5333
    .line 5334
    :goto_74
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5335
    .line 5336
    .line 5337
    :cond_40
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5338
    .line 5339
    .line 5340
    move-result-object v0

    .line 5341
    const v5, 0x111019f

    .line 5342
    .line 5343
    .line 5344
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5345
    .line 5346
    .line 5347
    move-result v0

    .line 5348
    if-eqz v0, :cond_41

    .line 5349
    .line 5350
    const-string/jumbo v0, "StartWallpaperManagerService"

    .line 5351
    .line 5352
    .line 5353
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5354
    .line 5355
    .line 5356
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5357
    .line 5358
    const-class v5, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    .line 5359
    .line 5360
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5361
    .line 5362
    .line 5363
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5364
    .line 5365
    .line 5366
    goto/16 :goto_75

    .line 5367
    .line 5368
    :cond_41
    const-string/jumbo v0, "SystemServer"

    .line 5369
    .line 5370
    .line 5371
    const-string/jumbo v5, "Wallpaper service disabled by config"

    .line 5372
    .line 5373
    .line 5374
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5375
    .line 5376
    .line 5377
    :goto_75
    const v0, 0x104034c

    .line 5378
    .line 5379
    .line 5380
    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 5381
    .line 5382
    .line 5383
    move-result v0

    .line 5384
    if-eqz v0, :cond_42

    .line 5385
    .line 5386
    const-string/jumbo v0, "StartWallpaperEffectsGenerationService"

    .line 5387
    .line 5388
    .line 5389
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5390
    .line 5391
    .line 5392
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5393
    .line 5394
    const-class v5, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 5395
    .line 5396
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5397
    .line 5398
    .line 5399
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5400
    .line 5401
    .line 5402
    :cond_42
    const-string/jumbo v0, "StartAudioService"

    .line 5403
    .line 5404
    .line 5405
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5406
    .line 5407
    .line 5408
    if-nez v14, :cond_43

    .line 5409
    .line 5410
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5411
    .line 5412
    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    .line 5413
    .line 5414
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5415
    .line 5416
    .line 5417
    goto/16 :goto_76

    .line 5418
    .line 5419
    :cond_43
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5420
    .line 5421
    .line 5422
    move-result-object v0

    .line 5423
    const v5, 0x1040354

    .line 5424
    .line 5425
    .line 5426
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 5427
    .line 5428
    .line 5429
    move-result-object v5

    .line 5430
    :try_start_6e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5431
    .line 5432
    new-instance v12, Ljava/lang/StringBuilder;

    .line 5433
    .line 5434
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 5435
    .line 5436
    .line 5437
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5438
    .line 5439
    .line 5440
    const-string v14, "$Lifecycle"

    .line 5441
    .line 5442
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5443
    .line 5444
    .line 5445
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5446
    .line 5447
    .line 5448
    move-result-object v12

    .line 5449
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_4a

    .line 5450
    .line 5451
    .line 5452
    goto/16 :goto_76

    .line 5453
    .line 5454
    :catchall_4a
    move-exception v0

    .line 5455
    new-instance v12, Ljava/lang/StringBuilder;

    .line 5456
    .line 5457
    const-string/jumbo v14, "starting "

    .line 5458
    .line 5459
    .line 5460
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5461
    .line 5462
    .line 5463
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5464
    .line 5465
    .line 5466
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5467
    .line 5468
    .line 5469
    move-result-object v5

    .line 5470
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5471
    .line 5472
    .line 5473
    :goto_76
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5474
    .line 5475
    .line 5476
    const-string/jumbo v0, "StartSoundTriggerMiddlewareService"

    .line 5477
    .line 5478
    .line 5479
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5480
    .line 5481
    .line 5482
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5483
    .line 5484
    const-class v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    .line 5485
    .line 5486
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5487
    .line 5488
    .line 5489
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5490
    .line 5491
    .line 5492
    const-string/jumbo v0, "LedCoverAppService"

    .line 5493
    .line 5494
    .line 5495
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5496
    .line 5497
    .line 5498
    new-instance v0, Lcom/android/server/ledcoverapp/LedCoverAppService;

    .line 5499
    .line 5500
    invoke-direct {v0, v7}, Lcom/android/server/ledcoverapp/LedCoverAppService;-><init>(Landroid/content/Context;)V

    .line 5501
    .line 5502
    .line 5503
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5504
    .line 5505
    .line 5506
    const-string/jumbo v0, "StartLedBackCoverService"

    .line 5507
    .line 5508
    .line 5509
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5510
    .line 5511
    .line 5512
    new-instance v0, Lcom/android/server/ledcover/LedBackCoverService;

    .line 5513
    .line 5514
    invoke-direct {v0, v7}, Lcom/android/server/ledcover/LedBackCoverService;-><init>(Landroid/content/Context;)V

    .line 5515
    .line 5516
    .line 5517
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5518
    .line 5519
    .line 5520
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5521
    .line 5522
    const-string/jumbo v5, "android.hardware.broadcastradio"

    .line 5523
    .line 5524
    .line 5525
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5526
    .line 5527
    .line 5528
    move-result v0

    .line 5529
    if-eqz v0, :cond_44

    .line 5530
    .line 5531
    const-string/jumbo v0, "StartBroadcastRadioService"

    .line 5532
    .line 5533
    .line 5534
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5535
    .line 5536
    .line 5537
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5538
    .line 5539
    const-class v5, Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 5540
    .line 5541
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5542
    .line 5543
    .line 5544
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5545
    .line 5546
    .line 5547
    :cond_44
    if-nez v15, :cond_45

    .line 5548
    .line 5549
    const-string/jumbo v0, "StartDockObserver"

    .line 5550
    .line 5551
    .line 5552
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5553
    .line 5554
    .line 5555
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5556
    .line 5557
    const-class v5, Lcom/android/server/DockObserver;

    .line 5558
    .line 5559
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5560
    .line 5561
    .line 5562
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5563
    .line 5564
    .line 5565
    :cond_45
    if-eqz v13, :cond_46

    .line 5566
    .line 5567
    const-string/jumbo v0, "StartThermalObserver"

    .line 5568
    .line 5569
    .line 5570
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5571
    .line 5572
    .line 5573
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5574
    .line 5575
    const-string/jumbo v5, "com.android.clockwork.ThermalObserver"

    .line 5576
    .line 5577
    .line 5578
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 5579
    .line 5580
    .line 5581
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5582
    .line 5583
    .line 5584
    :cond_46
    if-nez v13, :cond_47

    .line 5585
    .line 5586
    const-string/jumbo v0, "StartWiredAccessoryManager"

    .line 5587
    .line 5588
    .line 5589
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5590
    .line 5591
    .line 5592
    :try_start_6f
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    .line 5593
    .line 5594
    invoke-direct {v0, v7, v3}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 5595
    .line 5596
    .line 5597
    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_4b

    .line 5598
    .line 5599
    .line 5600
    goto/16 :goto_77

    .line 5601
    .line 5602
    :catchall_4b
    move-exception v0

    .line 5603
    const-string/jumbo v5, "starting WiredAccessoryManager"

    .line 5604
    .line 5605
    .line 5606
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5607
    .line 5608
    .line 5609
    :goto_77
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5610
    .line 5611
    .line 5612
    :cond_47
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5613
    .line 5614
    const-string/jumbo v5, "android.software.midi"

    .line 5615
    .line 5616
    .line 5617
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5618
    .line 5619
    .line 5620
    move-result v0

    .line 5621
    if-eqz v0, :cond_48

    .line 5622
    .line 5623
    const-string/jumbo v0, "StartMidiManager"

    .line 5624
    .line 5625
    .line 5626
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5627
    .line 5628
    .line 5629
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5630
    .line 5631
    const-class v5, Lcom/android/server/midi/MidiService$Lifecycle;

    .line 5632
    .line 5633
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5634
    .line 5635
    .line 5636
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5637
    .line 5638
    .line 5639
    :cond_48
    const-string/jumbo v0, "StartAdbService"

    .line 5640
    .line 5641
    .line 5642
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5643
    .line 5644
    .line 5645
    :try_start_70
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5646
    .line 5647
    const-class v5, Lcom/android/server/adb/AdbService$Lifecycle;

    .line 5648
    .line 5649
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_4c

    .line 5650
    .line 5651
    .line 5652
    goto/16 :goto_78

    .line 5653
    .line 5654
    :catchall_4c
    const-string/jumbo v0, "SystemServer"

    .line 5655
    .line 5656
    .line 5657
    const-string v5, "Failure starting AdbService"

    .line 5658
    .line 5659
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    .line 5661
    .line 5662
    :goto_78
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5663
    .line 5664
    .line 5665
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5666
    .line 5667
    const-string/jumbo v5, "android.hardware.usb.host"

    .line 5668
    .line 5669
    .line 5670
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5671
    .line 5672
    .line 5673
    move-result v0

    .line 5674
    if-nez v0, :cond_49

    .line 5675
    .line 5676
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5677
    .line 5678
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 5679
    .line 5680
    .line 5681
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5682
    .line 5683
    .line 5684
    move-result v0

    .line 5685
    if-nez v0, :cond_49

    .line 5686
    .line 5687
    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    .line 5688
    .line 5689
    if-eqz v0, :cond_4a

    .line 5690
    .line 5691
    :cond_49
    const-string/jumbo v0, "StartUsbService"

    .line 5692
    .line 5693
    .line 5694
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5695
    .line 5696
    .line 5697
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5698
    .line 5699
    const-class v5, Lcom/android/server/usb/UsbService$Lifecycle;

    .line 5700
    .line 5701
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5702
    .line 5703
    .line 5704
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5705
    .line 5706
    .line 5707
    :cond_4a
    if-nez v13, :cond_4b

    .line 5708
    .line 5709
    const-string/jumbo v0, "StartSerialService"

    .line 5710
    .line 5711
    .line 5712
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5713
    .line 5714
    .line 5715
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5716
    .line 5717
    const-class v5, Lcom/android/server/SerialService$Lifecycle;

    .line 5718
    .line 5719
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5720
    .line 5721
    .line 5722
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5723
    .line 5724
    .line 5725
    :cond_4b
    const-string/jumbo v0, "StartHardwarePropertiesManagerService"

    .line 5726
    .line 5727
    .line 5728
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5729
    .line 5730
    .line 5731
    :try_start_71
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    .line 5732
    .line 5733
    invoke-direct {v0, v7}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    .line 5734
    .line 5735
    .line 5736
    const-string/jumbo v5, "hardware_properties"

    .line 5737
    .line 5738
    .line 5739
    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_4d

    .line 5740
    .line 5741
    .line 5742
    goto/16 :goto_79

    .line 5743
    .line 5744
    :catchall_4d
    move-exception v0

    .line 5745
    const-string/jumbo v5, "SystemServer"

    .line 5746
    .line 5747
    .line 5748
    const-string v12, "Failure starting HardwarePropertiesManagerService"

    .line 5749
    .line 5750
    invoke-static {v5, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5751
    .line 5752
    .line 5753
    :goto_79
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5754
    .line 5755
    .line 5756
    if-nez v13, :cond_4c

    .line 5757
    .line 5758
    const-string/jumbo v0, "StartTwilightService"

    .line 5759
    .line 5760
    .line 5761
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5762
    .line 5763
    .line 5764
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5765
    .line 5766
    const-class v5, Lcom/android/server/twilight/TwilightService;

    .line 5767
    .line 5768
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5769
    .line 5770
    .line 5771
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5772
    .line 5773
    .line 5774
    :cond_4c
    const-string/jumbo v0, "StartColorDisplay"

    .line 5775
    .line 5776
    .line 5777
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5778
    .line 5779
    .line 5780
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5781
    .line 5782
    const-class v5, Lcom/android/server/display/color/ColorDisplayService;

    .line 5783
    .line 5784
    const-string/jumbo v12, "StartJobScheduler"

    .line 5785
    .line 5786
    .line 5787
    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5788
    .line 5789
    .line 5790
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5791
    .line 5792
    const-class v5, Lcom/android/server/job/JobSchedulerService;

    .line 5793
    .line 5794
    const-string/jumbo v12, "StartSoundTrigger"

    .line 5795
    .line 5796
    .line 5797
    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5798
    .line 5799
    .line 5800
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5801
    .line 5802
    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 5803
    .line 5804
    const-string/jumbo v12, "StartTrustManager"

    .line 5805
    .line 5806
    .line 5807
    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5808
    .line 5809
    .line 5810
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5811
    .line 5812
    const-class v5, Lcom/android/server/trust/TrustManagerService;

    .line 5813
    .line 5814
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5815
    .line 5816
    .line 5817
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5818
    .line 5819
    .line 5820
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5821
    .line 5822
    const-string/jumbo v5, "android.software.backup"

    .line 5823
    .line 5824
    .line 5825
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5826
    .line 5827
    .line 5828
    move-result v0

    .line 5829
    if-eqz v0, :cond_4d

    .line 5830
    .line 5831
    const-string/jumbo v0, "StartBackupManager"

    .line 5832
    .line 5833
    .line 5834
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5835
    .line 5836
    .line 5837
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5838
    .line 5839
    const-class v5, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    .line 5840
    .line 5841
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5842
    .line 5843
    .line 5844
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5845
    .line 5846
    .line 5847
    :cond_4d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5848
    .line 5849
    const-string/jumbo v5, "android.software.app_widgets"

    .line 5850
    .line 5851
    .line 5852
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5853
    .line 5854
    .line 5855
    move-result v0

    .line 5856
    if-nez v0, :cond_4e

    .line 5857
    .line 5858
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5859
    .line 5860
    .line 5861
    move-result-object v0

    .line 5862
    const v5, 0x111016f

    .line 5863
    .line 5864
    .line 5865
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5866
    .line 5867
    .line 5868
    move-result v0

    .line 5869
    if-eqz v0, :cond_4f

    .line 5870
    .line 5871
    :cond_4e
    const-string/jumbo v0, "StartAppWidgetService"

    .line 5872
    .line 5873
    .line 5874
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5875
    .line 5876
    .line 5877
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5878
    .line 5879
    const-class v5, Lcom/android/server/appwidget/AppWidgetService;

    .line 5880
    .line 5881
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5882
    .line 5883
    .line 5884
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5885
    .line 5886
    .line 5887
    :cond_4f
    const-string/jumbo v0, "StartVoiceRecognitionManager"

    .line 5888
    .line 5889
    .line 5890
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5891
    .line 5892
    .line 5893
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5894
    .line 5895
    const-class v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 5896
    .line 5897
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5898
    .line 5899
    .line 5900
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5901
    .line 5902
    .line 5903
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5904
    .line 5905
    .line 5906
    move-result-object v0

    .line 5907
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    .line 5908
    .line 5909
    .line 5910
    move-result v0

    .line 5911
    if-eqz v0, :cond_50

    .line 5912
    .line 5913
    const-string/jumbo v0, "StartGestureLauncher"

    .line 5914
    .line 5915
    .line 5916
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5917
    .line 5918
    .line 5919
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5920
    .line 5921
    const-class v5, Lcom/android/server/GestureLauncherService;

    .line 5922
    .line 5923
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5924
    .line 5925
    .line 5926
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5927
    .line 5928
    .line 5929
    :cond_50
    const-string/jumbo v0, "StartSensorNotification"

    .line 5930
    .line 5931
    .line 5932
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5933
    .line 5934
    .line 5935
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5936
    .line 5937
    const-class v5, Lcom/android/server/SensorNotificationService;

    .line 5938
    .line 5939
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5940
    .line 5941
    .line 5942
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5943
    .line 5944
    .line 5945
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5946
    .line 5947
    const-string/jumbo v5, "android.hardware.context_hub"

    .line 5948
    .line 5949
    .line 5950
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5951
    .line 5952
    .line 5953
    move-result v0

    .line 5954
    if-eqz v0, :cond_51

    .line 5955
    .line 5956
    const-string/jumbo v0, "StartContextHubSystemService"

    .line 5957
    .line 5958
    .line 5959
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5960
    .line 5961
    .line 5962
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5963
    .line 5964
    const-class v5, Lcom/android/server/ContextHubSystemService;

    .line 5965
    .line 5966
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5967
    .line 5968
    .line 5969
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5970
    .line 5971
    .line 5972
    :cond_51
    const-string/jumbo v0, "StartDiskStatsService"

    .line 5973
    .line 5974
    .line 5975
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5976
    .line 5977
    .line 5978
    :try_start_72
    const-string/jumbo v0, "diskstats"

    .line 5979
    .line 5980
    .line 5981
    new-instance v5, Lcom/android/server/DiskStatsService;

    .line 5982
    .line 5983
    invoke-direct {v5, v7}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    .line 5984
    .line 5985
    .line 5986
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_4e

    .line 5987
    .line 5988
    .line 5989
    goto/16 :goto_7a

    .line 5990
    .line 5991
    :catchall_4e
    move-exception v0

    .line 5992
    const-string/jumbo v5, "starting DiskStats Service"

    .line 5993
    .line 5994
    .line 5995
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5996
    .line 5997
    .line 5998
    :goto_7a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5999
    .line 6000
    .line 6001
    const-string/jumbo v0, "RuntimeService"

    .line 6002
    .line 6003
    .line 6004
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6005
    .line 6006
    .line 6007
    :try_start_73
    const-string/jumbo v0, "runtime"

    .line 6008
    .line 6009
    .line 6010
    new-instance v5, Lcom/android/server/RuntimeService;

    .line 6011
    .line 6012
    invoke-direct {v5, v7}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    .line 6013
    .line 6014
    .line 6015
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_4f

    .line 6016
    .line 6017
    .line 6018
    goto/16 :goto_7b

    .line 6019
    .line 6020
    :catchall_4f
    move-exception v0

    .line 6021
    const-string/jumbo v5, "starting RuntimeService"

    .line 6022
    .line 6023
    .line 6024
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6025
    .line 6026
    .line 6027
    :goto_7b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6028
    .line 6029
    .line 6030
    if-nez v10, :cond_53

    .line 6031
    .line 6032
    if-eqz v13, :cond_52

    .line 6033
    .line 6034
    if-eqz v13, :cond_53

    .line 6035
    .line 6036
    :cond_52
    const-string/jumbo v0, "StartNetworkTimeUpdateService"

    .line 6037
    .line 6038
    .line 6039
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6040
    .line 6041
    .line 6042
    :try_start_74
    new-instance v5, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 6043
    .line 6044
    invoke-direct {v5, v7}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_51

    .line 6045
    .line 6046
    .line 6047
    :try_start_75
    const-string/jumbo v0, "network_time_update_service"

    .line 6048
    .line 6049
    .line 6050
    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_50

    .line 6051
    .line 6052
    .line 6053
    goto/16 :goto_7d

    .line 6054
    .line 6055
    :catchall_50
    move-exception v0

    .line 6056
    goto/16 :goto_7c

    .line 6057
    .line 6058
    :catchall_51
    move-exception v0

    .line 6059
    const/4 v5, 0x0

    .line 6060
    :goto_7c
    const-string/jumbo v10, "starting NetworkTimeUpdate service"

    .line 6061
    .line 6062
    .line 6063
    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6064
    .line 6065
    .line 6066
    :goto_7d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6067
    .line 6068
    .line 6069
    goto/16 :goto_7e

    .line 6070
    .line 6071
    :cond_53
    const/4 v5, 0x0

    .line 6072
    :goto_7e
    const-string v0, "CertBlocklister"

    .line 6073
    .line 6074
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6075
    .line 6076
    .line 6077
    :try_start_76
    new-instance v0, Lcom/android/server/CertBlocklister;

    .line 6078
    .line 6079
    invoke-direct {v0, v7}, Lcom/android/server/CertBlocklister;-><init>(Landroid/content/Context;)V
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_52

    .line 6080
    .line 6081
    .line 6082
    goto/16 :goto_7f

    .line 6083
    .line 6084
    :catchall_52
    move-exception v0

    .line 6085
    const-string/jumbo v10, "starting CertBlocklister"

    .line 6086
    .line 6087
    .line 6088
    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6089
    .line 6090
    .line 6091
    :goto_7f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6092
    .line 6093
    .line 6094
    const-string/jumbo v0, "StartEmergencyAffordanceService"

    .line 6095
    .line 6096
    .line 6097
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6098
    .line 6099
    .line 6100
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6101
    .line 6102
    const-class v10, Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 6103
    .line 6104
    const-string/jumbo v12, "startBlobStoreManagerService"

    .line 6105
    .line 6106
    .line 6107
    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6108
    .line 6109
    .line 6110
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6111
    .line 6112
    const-class v10, Lcom/android/server/blob/BlobStoreManagerService;

    .line 6113
    .line 6114
    const-string/jumbo v12, "StartDreamManager"

    .line 6115
    .line 6116
    .line 6117
    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6118
    .line 6119
    .line 6120
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6121
    .line 6122
    const-class v10, Lcom/android/server/dreams/DreamManagerService;

    .line 6123
    .line 6124
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6125
    .line 6126
    .line 6127
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6128
    .line 6129
    .line 6130
    const-string v0, "AddGraphicsStatsService"

    .line 6131
    .line 6132
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6133
    .line 6134
    .line 6135
    const-string/jumbo v0, "graphicsstats"

    .line 6136
    .line 6137
    .line 6138
    new-instance v10, Landroid/graphics/GraphicsStatsService;

    .line 6139
    .line 6140
    invoke-direct {v10, v7}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 6141
    .line 6142
    .line 6143
    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6144
    .line 6145
    .line 6146
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6147
    .line 6148
    .line 6149
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    .line 6150
    .line 6151
    if-eqz v0, :cond_54

    .line 6152
    .line 6153
    const-string v0, "AddCoverageService"

    .line 6154
    .line 6155
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6156
    .line 6157
    .line 6158
    const-string/jumbo v0, "coverage"

    .line 6159
    .line 6160
    .line 6161
    new-instance v10, Lcom/android/server/coverage/CoverageService;

    .line 6162
    .line 6163
    invoke-direct {v10}, Lcom/android/server/coverage/CoverageService;-><init>()V

    .line 6164
    .line 6165
    .line 6166
    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6167
    .line 6168
    .line 6169
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6170
    .line 6171
    .line 6172
    :cond_54
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6173
    .line 6174
    const-string/jumbo v10, "android.software.print"

    .line 6175
    .line 6176
    .line 6177
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6178
    .line 6179
    .line 6180
    move-result v0

    .line 6181
    if-eqz v0, :cond_55

    .line 6182
    .line 6183
    const-string/jumbo v0, "StartPrintManager"

    .line 6184
    .line 6185
    .line 6186
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6187
    .line 6188
    .line 6189
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6190
    .line 6191
    const-class v10, Lcom/android/server/print/PrintManagerService;

    .line 6192
    .line 6193
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6194
    .line 6195
    .line 6196
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6197
    .line 6198
    .line 6199
    :cond_55
    const-string/jumbo v0, "StartAttestationVerificationService"

    .line 6200
    .line 6201
    .line 6202
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6203
    .line 6204
    .line 6205
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6206
    .line 6207
    const-class v10, Lcom/android/server/security/AttestationVerificationManagerService;

    .line 6208
    .line 6209
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6210
    .line 6211
    .line 6212
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6213
    .line 6214
    .line 6215
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6216
    .line 6217
    const-string/jumbo v10, "android.software.companion_device_setup"

    .line 6218
    .line 6219
    .line 6220
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6221
    .line 6222
    .line 6223
    move-result v0

    .line 6224
    if-eqz v0, :cond_56

    .line 6225
    .line 6226
    const-string/jumbo v0, "StartCompanionDeviceManager"

    .line 6227
    .line 6228
    .line 6229
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6230
    .line 6231
    .line 6232
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6233
    .line 6234
    const-class v10, Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 6235
    .line 6236
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6237
    .line 6238
    .line 6239
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6240
    .line 6241
    .line 6242
    :cond_56
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6243
    .line 6244
    .line 6245
    move-result-object v0

    .line 6246
    const v10, 0x111019e

    .line 6247
    .line 6248
    .line 6249
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 6250
    .line 6251
    .line 6252
    move-result v0

    .line 6253
    if-eqz v0, :cond_57

    .line 6254
    .line 6255
    const-string/jumbo v0, "StartVirtualDeviceManager"

    .line 6256
    .line 6257
    .line 6258
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6259
    .line 6260
    .line 6261
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6262
    .line 6263
    const-class v10, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 6264
    .line 6265
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6266
    .line 6267
    .line 6268
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6269
    .line 6270
    .line 6271
    :cond_57
    const-string/jumbo v0, "StartRestrictionManager"

    .line 6272
    .line 6273
    .line 6274
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6275
    .line 6276
    .line 6277
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6278
    .line 6279
    const-class v10, Lcom/android/server/restrictions/RestrictionsManagerService;

    .line 6280
    .line 6281
    const-string v12, "CocktailBarService"

    .line 6282
    .line 6283
    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6284
    .line 6285
    .line 6286
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6287
    .line 6288
    const-class v10, Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .line 6289
    .line 6290
    const-string/jumbo v12, "StartAODManagerService"

    .line 6291
    .line 6292
    .line 6293
    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6294
    .line 6295
    .line 6296
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6297
    .line 6298
    const-class v10, Lcom/android/server/aod/AODManagerService;

    .line 6299
    .line 6300
    const-string v12, "KMTDService"

    .line 6301
    .line 6302
    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6303
    .line 6304
    .line 6305
    :try_start_77
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 6306
    .line 6307
    const-string v10, "/system/framework/knox_mtd.jar"

    .line 6308
    .line 6309
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 6310
    .line 6311
    .line 6312
    move-result-object v12

    .line 6313
    invoke-direct {v0, v10, v12}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 6314
    .line 6315
    .line 6316
    const-string/jumbo v10, "com.samsung.android.knox.mtd.KMTDService"

    .line 6317
    .line 6318
    .line 6319
    invoke-virtual {v0, v10}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6320
    .line 6321
    .line 6322
    move-result-object v0

    .line 6323
    const/4 v12, 0x1

    .line 6324
    new-array v10, v12, [Ljava/lang/Class;

    .line 6325
    .line 6326
    const-class v12, Landroid/content/Context;

    .line 6327
    .line 6328
    const/16 v19, 0x0

    .line 6329
    .line 6330
    aput-object v12, v10, v19

    .line 6331
    .line 6332
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 6333
    .line 6334
    .line 6335
    move-result-object v0

    .line 6336
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 6337
    .line 6338
    .line 6339
    move-result-object v10

    .line 6340
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 6341
    .line 6342
    .line 6343
    move-result-object v0

    .line 6344
    check-cast v0, Landroid/os/IBinder;

    .line 6345
    .line 6346
    const-string/jumbo v10, "knox.mtd"

    .line 6347
    .line 6348
    .line 6349
    invoke-static {v10, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_b

    .line 6350
    .line 6351
    .line 6352
    goto/16 :goto_80

    .line 6353
    .line 6354
    :catch_b
    const-string/jumbo v0, "SystemServer"

    .line 6355
    .line 6356
    .line 6357
    const-string/jumbo v10, "knox_mtd.jar not found"

    .line 6358
    .line 6359
    .line 6360
    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6361
    .line 6362
    .line 6363
    :goto_80
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6364
    .line 6365
    .line 6366
    const-string v0, "BattAuthManager"

    .line 6367
    .line 6368
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6369
    .line 6370
    .line 6371
    :try_start_78
    const-string/jumbo v0, "SystemServer"

    .line 6372
    .line 6373
    .line 6374
    const-string v10, "BattAuthManager"

    .line 6375
    .line 6376
    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6377
    .line 6378
    .line 6379
    new-instance v0, Lcom/samsung/android/battauthmanager/BattAuthManager;

    .line 6380
    .line 6381
    invoke-direct {v0, v7}, Lcom/samsung/android/battauthmanager/BattAuthManager;-><init>(Landroid/content/Context;)V

    .line 6382
    .line 6383
    .line 6384
    const-class v10, Lcom/samsung/android/battauthmanager/BattAuthManager;

    .line 6385
    .line 6386
    invoke-static {v10, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_53

    .line 6387
    .line 6388
    .line 6389
    goto/16 :goto_81

    .line 6390
    .line 6391
    :catchall_53
    move-exception v0

    .line 6392
    const-string/jumbo v10, "starting BattAuthManager"

    .line 6393
    .line 6394
    .line 6395
    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6396
    .line 6397
    .line 6398
    :goto_81
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6399
    .line 6400
    .line 6401
    const-string/jumbo v0, "StartMediaSessionService"

    .line 6402
    .line 6403
    .line 6404
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6405
    .line 6406
    .line 6407
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6408
    .line 6409
    const-class v10, Lcom/android/server/media/MediaSessionService;

    .line 6410
    .line 6411
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6412
    .line 6413
    .line 6414
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6415
    .line 6416
    .line 6417
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6418
    .line 6419
    const-string/jumbo v10, "android.hardware.hdmi.cec"

    .line 6420
    .line 6421
    .line 6422
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6423
    .line 6424
    .line 6425
    move-result v0

    .line 6426
    if-eqz v0, :cond_58

    .line 6427
    .line 6428
    const-string/jumbo v0, "StartHdmiControlService"

    .line 6429
    .line 6430
    .line 6431
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6432
    .line 6433
    .line 6434
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6435
    .line 6436
    const-class v10, Lcom/android/server/hdmi/HdmiControlService;

    .line 6437
    .line 6438
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6439
    .line 6440
    .line 6441
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6442
    .line 6443
    .line 6444
    :cond_58
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6445
    .line 6446
    const-string/jumbo v10, "android.software.live_tv"

    .line 6447
    .line 6448
    .line 6449
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6450
    .line 6451
    .line 6452
    move-result v0

    .line 6453
    if-nez v0, :cond_59

    .line 6454
    .line 6455
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6456
    .line 6457
    const-string/jumbo v10, "android.software.leanback"

    .line 6458
    .line 6459
    .line 6460
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6461
    .line 6462
    .line 6463
    move-result v0

    .line 6464
    if-eqz v0, :cond_5a

    .line 6465
    .line 6466
    :cond_59
    const-string/jumbo v0, "StartTvInteractiveAppManager"

    .line 6467
    .line 6468
    .line 6469
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6470
    .line 6471
    .line 6472
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6473
    .line 6474
    const-class v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6475
    .line 6476
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6477
    .line 6478
    .line 6479
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6480
    .line 6481
    .line 6482
    :cond_5a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6483
    .line 6484
    const-string/jumbo v10, "android.software.live_tv"

    .line 6485
    .line 6486
    .line 6487
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6488
    .line 6489
    .line 6490
    move-result v0

    .line 6491
    if-nez v0, :cond_5b

    .line 6492
    .line 6493
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6494
    .line 6495
    const-string/jumbo v10, "android.software.leanback"

    .line 6496
    .line 6497
    .line 6498
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6499
    .line 6500
    .line 6501
    move-result v0

    .line 6502
    if-eqz v0, :cond_5c

    .line 6503
    .line 6504
    :cond_5b
    const-string/jumbo v0, "StartTvInputManager"

    .line 6505
    .line 6506
    .line 6507
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6508
    .line 6509
    .line 6510
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6511
    .line 6512
    const-class v10, Lcom/android/server/tv/TvInputManagerService;

    .line 6513
    .line 6514
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6515
    .line 6516
    .line 6517
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6518
    .line 6519
    .line 6520
    :cond_5c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6521
    .line 6522
    const-string/jumbo v10, "android.hardware.tv.tuner"

    .line 6523
    .line 6524
    .line 6525
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6526
    .line 6527
    .line 6528
    move-result v0

    .line 6529
    if-eqz v0, :cond_5d

    .line 6530
    .line 6531
    const-string/jumbo v0, "StartTunerResourceManager"

    .line 6532
    .line 6533
    .line 6534
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6535
    .line 6536
    .line 6537
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6538
    .line 6539
    const-class v10, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 6540
    .line 6541
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6542
    .line 6543
    .line 6544
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6545
    .line 6546
    .line 6547
    :cond_5d
    if-eqz v15, :cond_5e

    .line 6548
    .line 6549
    const-string/jumbo v0, "StartMediaQuality"

    .line 6550
    .line 6551
    .line 6552
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6553
    .line 6554
    .line 6555
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6556
    .line 6557
    const-class v10, Lcom/android/server/media/quality/MediaQualityService;

    .line 6558
    .line 6559
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6560
    .line 6561
    .line 6562
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6563
    .line 6564
    .line 6565
    :cond_5e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6566
    .line 6567
    const-string/jumbo v10, "android.software.picture_in_picture"

    .line 6568
    .line 6569
    .line 6570
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6571
    .line 6572
    .line 6573
    move-result v0

    .line 6574
    if-eqz v0, :cond_5f

    .line 6575
    .line 6576
    const-string/jumbo v0, "StartMediaResourceMonitor"

    .line 6577
    .line 6578
    .line 6579
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6580
    .line 6581
    .line 6582
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6583
    .line 6584
    const-class v10, Lcom/android/server/media/MediaResourceMonitorService;

    .line 6585
    .line 6586
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6587
    .line 6588
    .line 6589
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6590
    .line 6591
    .line 6592
    :cond_5f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6593
    .line 6594
    const-string/jumbo v10, "android.software.leanback"

    .line 6595
    .line 6596
    .line 6597
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6598
    .line 6599
    .line 6600
    move-result v0

    .line 6601
    if-eqz v0, :cond_60

    .line 6602
    .line 6603
    const-string/jumbo v0, "StartTvRemoteService"

    .line 6604
    .line 6605
    .line 6606
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6607
    .line 6608
    .line 6609
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6610
    .line 6611
    const-class v10, Lcom/android/server/tv/TvRemoteService;

    .line 6612
    .line 6613
    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6614
    .line 6615
    .line 6616
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6617
    .line 6618
    .line 6619
    :cond_60
    const-string/jumbo v0, "StartMediaRouterService"

    .line 6620
    .line 6621
    .line 6622
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6623
    .line 6624
    .line 6625
    :try_start_79
    new-instance v10, Lcom/android/server/media/MediaRouterService;

    .line 6626
    .line 6627
    invoke-direct {v10, v7}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_55

    .line 6628
    .line 6629
    .line 6630
    :try_start_7a
    const-string/jumbo v0, "media_router"

    .line 6631
    .line 6632
    .line 6633
    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_54

    .line 6634
    .line 6635
    .line 6636
    goto/16 :goto_83

    .line 6637
    .line 6638
    :catchall_54
    move-exception v0

    .line 6639
    goto/16 :goto_82

    .line 6640
    .line 6641
    :catchall_55
    move-exception v0

    .line 6642
    const/4 v10, 0x0

    .line 6643
    :goto_82
    const-string/jumbo v12, "starting MediaRouterService"

    .line 6644
    .line 6645
    .line 6646
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6647
    .line 6648
    .line 6649
    :goto_83
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6650
    .line 6651
    .line 6652
    const-string/jumbo v0, "SemInputDeviceManagerService SystemReady"

    .line 6653
    .line 6654
    .line 6655
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6656
    .line 6657
    .line 6658
    :try_start_7b
    const-string/jumbo v0, "SystemServer"

    .line 6659
    .line 6660
    .line 6661
    const-string/jumbo v12, "SemInputDeviceManagerService SystemReady loader"

    .line 6662
    .line 6663
    .line 6664
    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6665
    .line 6666
    .line 6667
    const-string/jumbo v0, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    .line 6668
    .line 6669
    .line 6670
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6671
    .line 6672
    .line 6673
    move-result-object v0

    .line 6674
    const-string/jumbo v12, "systemReady"

    .line 6675
    .line 6676
    .line 6677
    const/4 v14, 0x0

    .line 6678
    new-array v15, v14, [Ljava/lang/Class;

    .line 6679
    .line 6680
    const/4 v14, 0x0

    .line 6681
    invoke-virtual {v0, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6682
    .line 6683
    .line 6684
    move-result-object v12

    .line 6685
    invoke-virtual {v12, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_56

    .line 6686
    .line 6687
    .line 6688
    goto/16 :goto_84

    .line 6689
    .line 6690
    :catchall_56
    move-exception v0

    .line 6691
    const-string v12, "Failed To Call SemInputDeviceManagerService SystemReady loader "

    .line 6692
    .line 6693
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6694
    .line 6695
    .line 6696
    :goto_84
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6697
    .line 6698
    .line 6699
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6700
    .line 6701
    const-string/jumbo v12, "android.hardware.biometrics.face"

    .line 6702
    .line 6703
    .line 6704
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6705
    .line 6706
    .line 6707
    move-result v0

    .line 6708
    iget-object v12, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6709
    .line 6710
    const-string/jumbo v14, "android.hardware.biometrics.iris"

    .line 6711
    .line 6712
    .line 6713
    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6714
    .line 6715
    .line 6716
    move-result v12

    .line 6717
    iget-object v14, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6718
    .line 6719
    const-string/jumbo v15, "android.hardware.fingerprint"

    .line 6720
    .line 6721
    .line 6722
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6723
    .line 6724
    .line 6725
    move-result v14

    .line 6726
    if-eqz v0, :cond_61

    .line 6727
    .line 6728
    const-string/jumbo v0, "StartFaceSensor"

    .line 6729
    .line 6730
    .line 6731
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6732
    .line 6733
    .line 6734
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6735
    .line 6736
    const-class v15, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6737
    .line 6738
    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6739
    .line 6740
    .line 6741
    move-result-object v0

    .line 6742
    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6743
    .line 6744
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6745
    .line 6746
    .line 6747
    :cond_61
    if-eqz v12, :cond_62

    .line 6748
    .line 6749
    const-string/jumbo v0, "StartIrisSensor"

    .line 6750
    .line 6751
    .line 6752
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6753
    .line 6754
    .line 6755
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6756
    .line 6757
    const-class v12, Lcom/android/server/biometrics/sensors/iris/IrisService;

    .line 6758
    .line 6759
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6760
    .line 6761
    .line 6762
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6763
    .line 6764
    .line 6765
    :cond_62
    if-eqz v14, :cond_63

    .line 6766
    .line 6767
    const-string/jumbo v0, "StartFingerprintSensor"

    .line 6768
    .line 6769
    .line 6770
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6771
    .line 6772
    .line 6773
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6774
    .line 6775
    const-class v12, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6776
    .line 6777
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6778
    .line 6779
    .line 6780
    move-result-object v0

    .line 6781
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6782
    .line 6783
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6784
    .line 6785
    .line 6786
    :cond_63
    const-string/jumbo v0, "StartBiometricService"

    .line 6787
    .line 6788
    .line 6789
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6790
    .line 6791
    .line 6792
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6793
    .line 6794
    const-class v12, Lcom/android/server/biometrics/BiometricService;

    .line 6795
    .line 6796
    const-string/jumbo v14, "StartAuthService"

    .line 6797
    .line 6798
    .line 6799
    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6800
    .line 6801
    .line 6802
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6803
    .line 6804
    const-class v12, Lcom/android/server/biometrics/AuthService;

    .line 6805
    .line 6806
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6807
    .line 6808
    .line 6809
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6810
    .line 6811
    .line 6812
    if-nez v13, :cond_64

    .line 6813
    .line 6814
    const-string/jumbo v0, "StartDynamicCodeLoggingService"

    .line 6815
    .line 6816
    .line 6817
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6818
    .line 6819
    .line 6820
    :try_start_7c
    invoke-static {v7}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_57

    .line 6821
    .line 6822
    .line 6823
    goto/16 :goto_85

    .line 6824
    .line 6825
    :catchall_57
    move-exception v0

    .line 6826
    const-string/jumbo v12, "starting DynamicCodeLoggingService"

    .line 6827
    .line 6828
    .line 6829
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6830
    .line 6831
    .line 6832
    :goto_85
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6833
    .line 6834
    .line 6835
    :cond_64
    if-nez v13, :cond_65

    .line 6836
    .line 6837
    const-string/jumbo v0, "StartPruneInstantAppsJobService"

    .line 6838
    .line 6839
    .line 6840
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6841
    .line 6842
    .line 6843
    :try_start_7d
    invoke-static {v7}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_58

    .line 6844
    .line 6845
    .line 6846
    goto/16 :goto_86

    .line 6847
    .line 6848
    :catchall_58
    move-exception v0

    .line 6849
    const-string/jumbo v12, "StartPruneInstantAppsJobService"

    .line 6850
    .line 6851
    .line 6852
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6853
    .line 6854
    .line 6855
    :goto_86
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6856
    .line 6857
    .line 6858
    :cond_65
    const-string/jumbo v0, "StartSmartThingsService"

    .line 6859
    .line 6860
    .line 6861
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6862
    .line 6863
    .line 6864
    new-instance v0, Lcom/android/server/smartthings/SmartThingsService;

    .line 6865
    .line 6866
    invoke-direct {v0, v7}, Lcom/android/server/smartthings/SmartThingsService;-><init>(Landroid/content/Context;)V

    .line 6867
    .line 6868
    .line 6869
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6870
    .line 6871
    .line 6872
    const-string/jumbo v0, "StartSelinuxAuditLogsService"

    .line 6873
    .line 6874
    .line 6875
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6876
    .line 6877
    .line 6878
    :try_start_7e
    invoke-static {v7}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_59

    .line 6879
    .line 6880
    .line 6881
    goto/16 :goto_87

    .line 6882
    .line 6883
    :catchall_59
    move-exception v0

    .line 6884
    const-string/jumbo v12, "starting SelinuxAuditLogsService"

    .line 6885
    .line 6886
    .line 6887
    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6888
    .line 6889
    .line 6890
    :goto_87
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6891
    .line 6892
    .line 6893
    const-string/jumbo v0, "StartShortcutServiceLifecycle"

    .line 6894
    .line 6895
    .line 6896
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6897
    .line 6898
    .line 6899
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6900
    .line 6901
    const-class v12, Lcom/android/server/pm/ShortcutService$Lifecycle;

    .line 6902
    .line 6903
    const-string/jumbo v14, "StartLauncherAppsService"

    .line 6904
    .line 6905
    .line 6906
    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6907
    .line 6908
    .line 6909
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6910
    .line 6911
    const-class v12, Lcom/android/server/pm/LauncherAppsService;

    .line 6912
    .line 6913
    const-string/jumbo v14, "StartCrossProfileAppsService"

    .line 6914
    .line 6915
    .line 6916
    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6917
    .line 6918
    .line 6919
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6920
    .line 6921
    const-class v12, Lcom/android/server/pm/CrossProfileAppsService;

    .line 6922
    .line 6923
    const-string/jumbo v14, "StartPeopleService"

    .line 6924
    .line 6925
    .line 6926
    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6927
    .line 6928
    .line 6929
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6930
    .line 6931
    const-class v12, Lcom/android/server/people/PeopleService;

    .line 6932
    .line 6933
    const-string/jumbo v14, "StartMediaMetricsManager"

    .line 6934
    .line 6935
    .line 6936
    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6937
    .line 6938
    .line 6939
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6940
    .line 6941
    const-class v12, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 6942
    .line 6943
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6944
    .line 6945
    .line 6946
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6947
    .line 6948
    .line 6949
    const-string/jumbo v0, "ro.system_settings.service.backgound_install_control_enabled"

    .line 6950
    .line 6951
    .line 6952
    const/4 v12, 0x1

    .line 6953
    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6954
    .line 6955
    .line 6956
    move-result v0

    .line 6957
    if-eqz v0, :cond_66

    .line 6958
    .line 6959
    const-string/jumbo v0, "StartBackgroundInstallControlService"

    .line 6960
    .line 6961
    .line 6962
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6963
    .line 6964
    .line 6965
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6966
    .line 6967
    const-class v12, Lcom/android/server/pm/BackgroundInstallControlService;

    .line 6968
    .line 6969
    const-string/jumbo v14, "StartChimeraService"

    .line 6970
    .line 6971
    .line 6972
    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6973
    .line 6974
    .line 6975
    :try_start_7f
    new-instance v0, Lcom/android/server/chimera/ChimeraManagerService;

    .line 6976
    .line 6977
    iget-object v12, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 6978
    .line 6979
    invoke-direct {v0, v7, v12}, Lcom/android/server/chimera/ChimeraManagerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 6980
    .line 6981
    .line 6982
    const-string v12, "ChimeraManagerService"

    .line 6983
    .line 6984
    invoke-static {v12, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6985
    .line 6986
    .line 6987
    const-string/jumbo v0, "SystemServer"

    .line 6988
    .line 6989
    .line 6990
    const-string v12, "ChimeraManagerService loaded"

    .line 6991
    .line 6992
    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_c

    .line 6993
    .line 6994
    .line 6995
    goto/16 :goto_88

    .line 6996
    .line 6997
    :catch_c
    move-exception v0

    .line 6998
    const-string/jumbo v12, "SystemServer"

    .line 6999
    .line 7000
    .line 7001
    const-string v14, "Failure adding ChimeraManagerService"

    .line 7002
    .line 7003
    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7004
    .line 7005
    .line 7006
    :cond_66
    :goto_88
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7007
    .line 7008
    .line 7009
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7010
    .line 7011
    .line 7012
    move-result-object v0

    .line 7013
    const-string/jumbo v12, "android.hardware.wifi"

    .line 7014
    .line 7015
    .line 7016
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7017
    .line 7018
    .line 7019
    move-result v0

    .line 7020
    if-eqz v0, :cond_67

    .line 7021
    .line 7022
    const-string/jumbo v0, "StartOemWifi"

    .line 7023
    .line 7024
    .line 7025
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7026
    .line 7027
    .line 7028
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7029
    .line 7030
    const-string/jumbo v12, "com.samsung.android.server.wifi.SemWifiService"

    .line 7031
    .line 7032
    .line 7033
    const-string v14, "/system/framework/semwifi-service.jar"

    .line 7034
    .line 7035
    invoke-virtual {v0, v12, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7036
    .line 7037
    .line 7038
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7039
    .line 7040
    .line 7041
    :cond_67
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7042
    .line 7043
    .line 7044
    move-result-object v0

    .line 7045
    const-string/jumbo v12, "android.hardware.wifi.direct"

    .line 7046
    .line 7047
    .line 7048
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7049
    .line 7050
    .line 7051
    move-result v0

    .line 7052
    if-eqz v0, :cond_68

    .line 7053
    .line 7054
    const-string/jumbo v0, "StartOemWifiP2p"

    .line 7055
    .line 7056
    .line 7057
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7058
    .line 7059
    .line 7060
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7061
    .line 7062
    const-string/jumbo v12, "com.samsung.android.server.wifi.p2p.SemWifiP2pService"

    .line 7063
    .line 7064
    .line 7065
    const-string v14, "/system/framework/semwifi-service.jar"

    .line 7066
    .line 7067
    invoke-virtual {v0, v12, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7068
    .line 7069
    .line 7070
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7071
    .line 7072
    .line 7073
    :cond_68
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7074
    .line 7075
    .line 7076
    move-result-object v0

    .line 7077
    const-string/jumbo v12, "android.hardware.wifi.aware"

    .line 7078
    .line 7079
    .line 7080
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7081
    .line 7082
    .line 7083
    move-result v0

    .line 7084
    if-eqz v0, :cond_69

    .line 7085
    .line 7086
    const-string/jumbo v0, "StartOemWifiAware"

    .line 7087
    .line 7088
    .line 7089
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7090
    .line 7091
    .line 7092
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7093
    .line 7094
    const-string/jumbo v12, "com.samsung.android.server.wifi.aware.SemWifiAwareService"

    .line 7095
    .line 7096
    .line 7097
    const-string v14, "/system/framework/semwifi-service.jar"

    .line 7098
    .line 7099
    invoke-virtual {v0, v12, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7100
    .line 7101
    .line 7102
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7103
    .line 7104
    .line 7105
    :cond_69
    const-string/jumbo v0, "StartStdpService"

    .line 7106
    .line 7107
    .line 7108
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7109
    .line 7110
    .line 7111
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7112
    .line 7113
    const-string/jumbo v12, "com.samsung.android.server.wifi.stdp.StandardPlusService"

    .line 7114
    .line 7115
    .line 7116
    const-string v14, "/system/framework/semwifi-service.jar"

    .line 7117
    .line 7118
    invoke-virtual {v0, v12, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7119
    .line 7120
    .line 7121
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7122
    .line 7123
    .line 7124
    move-object v14, v8

    .line 7125
    move-object v12, v9

    .line 7126
    move-object/from16 v22, v10

    .line 7127
    .line 7128
    move-object v15, v11

    .line 7129
    move-object/from16 v9, v27

    .line 7130
    .line 7131
    move-object/from16 v11, v28

    .line 7132
    .line 7133
    move-object/from16 v8, v31

    .line 7134
    .line 7135
    move-object/from16 v27, v3

    .line 7136
    .line 7137
    move-object v10, v5

    .line 7138
    move/from16 v3, v16

    .line 7139
    .line 7140
    move-object/from16 v5, v21

    .line 7141
    .line 7142
    move-object/from16 v16, v30

    .line 7143
    .line 7144
    goto/16 :goto_34

    .line 7145
    .line 7146
    :goto_89
    const-string/jumbo v0, "StartMediaProjectionManager"

    .line 7147
    .line 7148
    .line 7149
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7150
    .line 7151
    .line 7152
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7153
    .line 7154
    move/from16 v28, v3

    .line 7155
    .line 7156
    const-class v3, Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 7157
    .line 7158
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7159
    .line 7160
    .line 7161
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7162
    .line 7163
    .line 7164
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7165
    .line 7166
    const-string/jumbo v3, "att.devicehealth.support"

    .line 7167
    .line 7168
    .line 7169
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7170
    .line 7171
    .line 7172
    move-result v0

    .line 7173
    if-eqz v0, :cond_6a

    .line 7174
    .line 7175
    const-string/jumbo v0, "SetupDeviceHealthSupport"

    .line 7176
    .line 7177
    .line 7178
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7179
    .line 7180
    .line 7181
    :try_start_80
    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 7182
    .line 7183
    invoke-direct {v0, v7}, Lcom/samsung/iqi/IQIServiceBrokerExt;-><init>(Landroid/content/Context;)V

    .line 7184
    .line 7185
    .line 7186
    invoke-virtual {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->startIqi()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_d

    .line 7187
    .line 7188
    .line 7189
    move-object/from16 v30, v5

    .line 7190
    .line 7191
    goto/16 :goto_8a

    .line 7192
    .line 7193
    :catch_d
    move-exception v0

    .line 7194
    const-string/jumbo v3, "SystemServer"

    .line 7195
    .line 7196
    .line 7197
    move-object/from16 v30, v5

    .line 7198
    .line 7199
    const-string/jumbo v5, "Unable to start com.samsung.iqi.IQIServiceBrokerExt"

    .line 7200
    .line 7201
    .line 7202
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7203
    .line 7204
    .line 7205
    :goto_8a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7206
    .line 7207
    .line 7208
    goto/16 :goto_8b

    .line 7209
    .line 7210
    :cond_6a
    move-object/from16 v30, v5

    .line 7211
    .line 7212
    const-string/jumbo v0, "SystemServer"

    .line 7213
    .line 7214
    .line 7215
    const-string/jumbo v3, "System feature for device health not found"

    .line 7216
    .line 7217
    .line 7218
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7219
    .line 7220
    .line 7221
    :goto_8b
    if-eqz v13, :cond_6c

    .line 7222
    .line 7223
    const-string/jumbo v0, "StartWearPowerService"

    .line 7224
    .line 7225
    .line 7226
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7227
    .line 7228
    .line 7229
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7230
    .line 7231
    const-string/jumbo v3, "com.android.clockwork.power.WearPowerService"

    .line 7232
    .line 7233
    .line 7234
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7235
    .line 7236
    .line 7237
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7238
    .line 7239
    .line 7240
    const-string/jumbo v0, "StartHealthService"

    .line 7241
    .line 7242
    .line 7243
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7244
    .line 7245
    .line 7246
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7247
    .line 7248
    const-string/jumbo v3, "com.android.clockwork.healthservices.HealthService"

    .line 7249
    .line 7250
    .line 7251
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7252
    .line 7253
    .line 7254
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7255
    .line 7256
    .line 7257
    const-string/jumbo v0, "StartSystemStateDisplayService"

    .line 7258
    .line 7259
    .line 7260
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7261
    .line 7262
    .line 7263
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7264
    .line 7265
    const-string/jumbo v3, "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

    .line 7266
    .line 7267
    .line 7268
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7269
    .line 7270
    .line 7271
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7272
    .line 7273
    .line 7274
    const-string/jumbo v0, "StartWearConnectivityService"

    .line 7275
    .line 7276
    .line 7277
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7278
    .line 7279
    .line 7280
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7281
    .line 7282
    const-string/jumbo v3, "com.android.clockwork.connectivity.WearConnectivityService"

    .line 7283
    .line 7284
    .line 7285
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7286
    .line 7287
    .line 7288
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7289
    .line 7290
    .line 7291
    const-string/jumbo v0, "StartWearDisplayService"

    .line 7292
    .line 7293
    .line 7294
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7295
    .line 7296
    .line 7297
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7298
    .line 7299
    const-string/jumbo v3, "com.android.clockwork.display.WearDisplayService"

    .line 7300
    .line 7301
    .line 7302
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7303
    .line 7304
    .line 7305
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7306
    .line 7307
    .line 7308
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 7309
    .line 7310
    if-eqz v0, :cond_6b

    .line 7311
    .line 7312
    const-string/jumbo v0, "StartWearDebugService"

    .line 7313
    .line 7314
    .line 7315
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7316
    .line 7317
    .line 7318
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7319
    .line 7320
    const-string/jumbo v3, "com.android.clockwork.debug.WearDebugService"

    .line 7321
    .line 7322
    .line 7323
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7324
    .line 7325
    .line 7326
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7327
    .line 7328
    .line 7329
    :cond_6b
    const-string/jumbo v0, "StartWearTimeService"

    .line 7330
    .line 7331
    .line 7332
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7333
    .line 7334
    .line 7335
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7336
    .line 7337
    const-string/jumbo v3, "com.android.clockwork.time.WearTimeService"

    .line 7338
    .line 7339
    .line 7340
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7341
    .line 7342
    .line 7343
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7344
    .line 7345
    .line 7346
    const-string/jumbo v0, "StartWearSettingsService"

    .line 7347
    .line 7348
    .line 7349
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7350
    .line 7351
    .line 7352
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7353
    .line 7354
    const-string/jumbo v3, "com.android.clockwork.settings.WearSettingsService"

    .line 7355
    .line 7356
    .line 7357
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7358
    .line 7359
    .line 7360
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7361
    .line 7362
    .line 7363
    const-string/jumbo v0, "StartWearModeService"

    .line 7364
    .line 7365
    .line 7366
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7367
    .line 7368
    .line 7369
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7370
    .line 7371
    const-string/jumbo v3, "com.android.clockwork.modes.ModeManagerService"

    .line 7372
    .line 7373
    .line 7374
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7375
    .line 7376
    .line 7377
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7378
    .line 7379
    .line 7380
    :cond_6c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7381
    .line 7382
    const-string/jumbo v3, "android.software.slices_disabled"

    .line 7383
    .line 7384
    .line 7385
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7386
    .line 7387
    .line 7388
    move-result v0

    .line 7389
    if-nez v0, :cond_6d

    .line 7390
    .line 7391
    const-string/jumbo v0, "StartSliceManagerService"

    .line 7392
    .line 7393
    .line 7394
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7395
    .line 7396
    .line 7397
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7398
    .line 7399
    const-class v3, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    .line 7400
    .line 7401
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7402
    .line 7403
    .line 7404
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7405
    .line 7406
    .line 7407
    :cond_6d
    invoke-static {v7}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureEmbedded(Landroid/content/Context;)Z

    .line 7408
    .line 7409
    .line 7410
    move-result v0

    .line 7411
    if-eqz v0, :cond_6e

    .line 7412
    .line 7413
    const-string/jumbo v0, "StartIoTSystemService"

    .line 7414
    .line 7415
    .line 7416
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7417
    .line 7418
    .line 7419
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7420
    .line 7421
    const-string/jumbo v3, "com.android.things.server.IoTSystemService"

    .line 7422
    .line 7423
    .line 7424
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7425
    .line 7426
    .line 7427
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7428
    .line 7429
    .line 7430
    :cond_6e
    const-string/jumbo v0, "StartSpenGestureManagerService"

    .line 7431
    .line 7432
    .line 7433
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7434
    .line 7435
    .line 7436
    :try_start_81
    const-string/jumbo v0, "spengestureservice"

    .line 7437
    .line 7438
    .line 7439
    new-instance v3, Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 7440
    .line 7441
    invoke-direct {v3, v7, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 7442
    .line 7443
    .line 7444
    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_5a

    .line 7445
    .line 7446
    .line 7447
    goto/16 :goto_8c

    .line 7448
    .line 7449
    :catchall_5a
    move-exception v0

    .line 7450
    const-string/jumbo v3, "starting SpenGestureManagerService"

    .line 7451
    .line 7452
    .line 7453
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7454
    .line 7455
    .line 7456
    :goto_8c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7457
    .line 7458
    .line 7459
    const-string/jumbo v0, "StartSamsungNotesService"

    .line 7460
    .line 7461
    .line 7462
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7463
    .line 7464
    .line 7465
    new-instance v0, Lcom/android/server/samsungnotes/SamsungNotesService;

    .line 7466
    .line 7467
    invoke-direct {v0, v7}, Lcom/android/server/samsungnotes/SamsungNotesService;-><init>(Landroid/content/Context;)V

    .line 7468
    .line 7469
    .line 7470
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7471
    .line 7472
    .line 7473
    const-string/jumbo v0, "StartStatsCompanion"

    .line 7474
    .line 7475
    .line 7476
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7477
    .line 7478
    .line 7479
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7480
    .line 7481
    const-string/jumbo v3, "com.android.server.stats.StatsCompanion$Lifecycle"

    .line 7482
    .line 7483
    .line 7484
    const-string v5, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    .line 7485
    .line 7486
    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7487
    .line 7488
    .line 7489
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7490
    .line 7491
    .line 7492
    const-string/jumbo v0, "StartRebootReadinessManagerService"

    .line 7493
    .line 7494
    .line 7495
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7496
    .line 7497
    .line 7498
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7499
    .line 7500
    const-string/jumbo v3, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    .line 7501
    .line 7502
    .line 7503
    const-string v5, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    .line 7504
    .line 7505
    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7506
    .line 7507
    .line 7508
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7509
    .line 7510
    .line 7511
    const-string/jumbo v0, "StartStatsPullAtomService"

    .line 7512
    .line 7513
    .line 7514
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7515
    .line 7516
    .line 7517
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7518
    .line 7519
    const-class v3, Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 7520
    .line 7521
    const-string/jumbo v5, "StatsBootstrapAtomService"

    .line 7522
    .line 7523
    .line 7524
    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7525
    .line 7526
    .line 7527
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7528
    .line 7529
    const-class v3, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    .line 7530
    .line 7531
    const-string/jumbo v5, "StartIncidentCompanionService"

    .line 7532
    .line 7533
    .line 7534
    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7535
    .line 7536
    .line 7537
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7538
    .line 7539
    const-class v3, Lcom/android/server/incident/IncidentCompanionService;

    .line 7540
    .line 7541
    const-string/jumbo v5, "StarSdkSandboxManagerService"

    .line 7542
    .line 7543
    .line 7544
    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7545
    .line 7546
    .line 7547
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7548
    .line 7549
    const-string/jumbo v3, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    .line 7550
    .line 7551
    .line 7552
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7553
    .line 7554
    .line 7555
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7556
    .line 7557
    .line 7558
    const-string/jumbo v0, "StartAdServicesManagerService"

    .line 7559
    .line 7560
    .line 7561
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7562
    .line 7563
    .line 7564
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7565
    .line 7566
    const-string/jumbo v3, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    .line 7567
    .line 7568
    .line 7569
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7570
    .line 7571
    .line 7572
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7573
    .line 7574
    .line 7575
    const-string/jumbo v0, "ro.system_settings.service.odp_enabled"

    .line 7576
    .line 7577
    .line 7578
    const/4 v3, 0x1

    .line 7579
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 7580
    .line 7581
    .line 7582
    move-result v0

    .line 7583
    if-eqz v0, :cond_6f

    .line 7584
    .line 7585
    const-string/jumbo v0, "StartOnDevicePersonalizationSystemService"

    .line 7586
    .line 7587
    .line 7588
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7589
    .line 7590
    .line 7591
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7592
    .line 7593
    const-string/jumbo v3, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    .line 7594
    .line 7595
    .line 7596
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7597
    .line 7598
    .line 7599
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7600
    .line 7601
    .line 7602
    :cond_6f
    const-string/jumbo v0, "StartProfilingCompanion"

    .line 7603
    .line 7604
    .line 7605
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7606
    .line 7607
    .line 7608
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7609
    .line 7610
    const-string/jumbo v3, "android.os.profiling.ProfilingService$Lifecycle"

    .line 7611
    .line 7612
    .line 7613
    const-string v5, "/apex/com.android.profiling/javalib/service-profiling.jar"

    .line 7614
    .line 7615
    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7616
    .line 7617
    .line 7618
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7619
    .line 7620
    .line 7621
    if-eqz v6, :cond_70

    .line 7622
    .line 7623
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7624
    .line 7625
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 7626
    .line 7627
    .line 7628
    :cond_70
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7629
    .line 7630
    const-string/jumbo v3, "android.hardware.telephony"

    .line 7631
    .line 7632
    .line 7633
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7634
    .line 7635
    .line 7636
    move-result v0

    .line 7637
    if-eqz v0, :cond_71

    .line 7638
    .line 7639
    const-string/jumbo v0, "StartMmsService"

    .line 7640
    .line 7641
    .line 7642
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7643
    .line 7644
    .line 7645
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7646
    .line 7647
    const-class v3, Lcom/android/server/MmsServiceBroker;

    .line 7648
    .line 7649
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7650
    .line 7651
    .line 7652
    move-result-object v0

    .line 7653
    check-cast v0, Lcom/android/server/MmsServiceBroker;

    .line 7654
    .line 7655
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7656
    .line 7657
    .line 7658
    move-object/from16 v3, v23

    .line 7659
    .line 7660
    move-object/from16 v23, v0

    .line 7661
    .line 7662
    goto/16 :goto_8d

    .line 7663
    .line 7664
    :cond_71
    move-object/from16 v3, v23

    .line 7665
    .line 7666
    move-object/from16 v23, v21

    .line 7667
    .line 7668
    :goto_8d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7669
    .line 7670
    const-string/jumbo v5, "android.software.autofill"

    .line 7671
    .line 7672
    .line 7673
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7674
    .line 7675
    .line 7676
    move-result v0

    .line 7677
    if-eqz v0, :cond_72

    .line 7678
    .line 7679
    const-string/jumbo v0, "StartAutoFillService"

    .line 7680
    .line 7681
    .line 7682
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7683
    .line 7684
    .line 7685
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7686
    .line 7687
    const-class v5, Lcom/android/server/autofill/AutofillManagerService;

    .line 7688
    .line 7689
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7690
    .line 7691
    .line 7692
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7693
    .line 7694
    .line 7695
    :cond_72
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7696
    .line 7697
    const-string/jumbo v5, "android.software.credentials"

    .line 7698
    .line 7699
    .line 7700
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7701
    .line 7702
    .line 7703
    move-result v0

    .line 7704
    if-eqz v0, :cond_74

    .line 7705
    .line 7706
    const-string/jumbo v0, "credential_manager"

    .line 7707
    .line 7708
    .line 7709
    const-string/jumbo v5, "enable_credential_manager"

    .line 7710
    .line 7711
    .line 7712
    move-object/from16 v31, v3

    .line 7713
    .line 7714
    const/4 v3, 0x1

    .line 7715
    invoke-static {v0, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7716
    .line 7717
    .line 7718
    move-result v0

    .line 7719
    if-eqz v0, :cond_73

    .line 7720
    .line 7721
    const-string/jumbo v0, "StartCredentialManagerService"

    .line 7722
    .line 7723
    .line 7724
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7725
    .line 7726
    .line 7727
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7728
    .line 7729
    const-class v3, Lcom/android/server/credentials/CredentialManagerService;

    .line 7730
    .line 7731
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7732
    .line 7733
    .line 7734
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7735
    .line 7736
    .line 7737
    goto/16 :goto_8e

    .line 7738
    .line 7739
    :cond_73
    const-string/jumbo v0, "SystemServer"

    .line 7740
    .line 7741
    .line 7742
    const-string v3, "CredentialManager disabled."

    .line 7743
    .line 7744
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7745
    .line 7746
    .line 7747
    goto/16 :goto_8e

    .line 7748
    .line 7749
    :cond_74
    move-object/from16 v31, v3

    .line 7750
    .line 7751
    :goto_8e
    const v0, 0x104034a

    .line 7752
    .line 7753
    .line 7754
    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 7755
    .line 7756
    .line 7757
    move-result v0

    .line 7758
    if-eqz v0, :cond_75

    .line 7759
    .line 7760
    const-string/jumbo v0, "StartTranslationManagerService"

    .line 7761
    .line 7762
    .line 7763
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7764
    .line 7765
    .line 7766
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7767
    .line 7768
    const-class v3, Lcom/android/server/translation/TranslationManagerService;

    .line 7769
    .line 7770
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7771
    .line 7772
    .line 7773
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7774
    .line 7775
    .line 7776
    goto/16 :goto_8f

    .line 7777
    .line 7778
    :cond_75
    const-string/jumbo v0, "SystemServer"

    .line 7779
    .line 7780
    .line 7781
    const-string/jumbo v3, "TranslationService not defined by OEM"

    .line 7782
    .line 7783
    .line 7784
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7785
    .line 7786
    .line 7787
    :goto_8f
    const-string/jumbo v0, "StartClipboardService"

    .line 7788
    .line 7789
    .line 7790
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7791
    .line 7792
    .line 7793
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7794
    .line 7795
    const-class v3, Lcom/android/server/clipboard/ClipboardService;

    .line 7796
    .line 7797
    const-string v5, "AppServiceManager"

    .line 7798
    .line 7799
    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7800
    .line 7801
    .line 7802
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7803
    .line 7804
    const-class v3, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    .line 7805
    .line 7806
    const-string/jumbo v5, "startTracingServiceProxy"

    .line 7807
    .line 7808
    .line 7809
    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7810
    .line 7811
    .line 7812
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7813
    .line 7814
    const-class v3, Lcom/android/server/tracing/TracingServiceProxy;

    .line 7815
    .line 7816
    const-string/jumbo v5, "StartDynamicInstrumentationManager"

    .line 7817
    .line 7818
    .line 7819
    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7820
    .line 7821
    .line 7822
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7823
    .line 7824
    const-class v3, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    .line 7825
    .line 7826
    const-string/jumbo v5, "MakeLockSettingsServiceReady"

    .line 7827
    .line 7828
    .line 7829
    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7830
    .line 7831
    .line 7832
    if-eqz v30, :cond_76

    .line 7833
    .line 7834
    :try_start_82
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_5b

    .line 7835
    .line 7836
    .line 7837
    goto/16 :goto_90

    .line 7838
    .line 7839
    :catchall_5b
    move-exception v0

    .line 7840
    const-string/jumbo v3, "making Lock Settings Service ready"

    .line 7841
    .line 7842
    .line 7843
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7844
    .line 7845
    .line 7846
    :cond_76
    :goto_90
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7847
    .line 7848
    .line 7849
    const-string/jumbo v0, "StartPersonaSystemready"

    .line 7850
    .line 7851
    .line 7852
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7853
    .line 7854
    .line 7855
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 7856
    .line 7857
    .line 7858
    move-result-object v0

    .line 7859
    const-string v3, "2.0"

    .line 7860
    .line 7861
    const-string/jumbo v5, "version"

    .line 7862
    .line 7863
    .line 7864
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7865
    .line 7866
    .line 7867
    move-result-object v0

    .line 7868
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7869
    .line 7870
    .line 7871
    move-result v0

    .line 7872
    if-eqz v0, :cond_77

    .line 7873
    .line 7874
    :try_start_83
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_5c

    .line 7875
    .line 7876
    .line 7877
    goto/16 :goto_91

    .line 7878
    .line 7879
    :catchall_5c
    move-exception v0

    .line 7880
    const-string/jumbo v3, "making Persona Manager Service ready"

    .line 7881
    .line 7882
    .line 7883
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7884
    .line 7885
    .line 7886
    :goto_91
    :try_start_84
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_5d

    .line 7887
    .line 7888
    .line 7889
    goto/16 :goto_92

    .line 7890
    .line 7891
    :catchall_5d
    move-exception v0

    .line 7892
    const-string/jumbo v3, "making KnoxMUMContainerPolicy Service ready"

    .line 7893
    .line 7894
    .line 7895
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7896
    .line 7897
    .line 7898
    :cond_77
    :goto_92
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7899
    .line 7900
    .line 7901
    const-string/jumbo v0, "StartBootPhaseLockSettingsReady"

    .line 7902
    .line 7903
    .line 7904
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7905
    .line 7906
    .line 7907
    const-string/jumbo v0, "SystemServer"

    .line 7908
    .line 7909
    .line 7910
    const-string v3, "!@Boot_EBS_D: PHASE_LOCK_SETTINGS_READY"

    .line 7911
    .line 7912
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7913
    .line 7914
    .line 7915
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7916
    .line 7917
    const/16 v3, 0x1e0

    .line 7918
    .line 7919
    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 7920
    .line 7921
    .line 7922
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7923
    .line 7924
    .line 7925
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7926
    .line 7927
    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 7928
    .line 7929
    iget-object v5, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 7930
    .line 7931
    move-object/from16 v25, v8

    .line 7932
    .line 7933
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7934
    .line 7935
    .line 7936
    move-result-object v8

    .line 7937
    move-object/from16 v30, v9

    .line 7938
    .line 7939
    const v9, 0x11101d7

    .line 7940
    .line 7941
    .line 7942
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 7943
    .line 7944
    .line 7945
    move-result v8

    .line 7946
    invoke-static {v0, v3, v5, v8}, Lcom/android/server/HsumBootUserInitializer;->createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;

    .line 7947
    .line 7948
    .line 7949
    move-result-object v3

    .line 7950
    if-eqz v3, :cond_78

    .line 7951
    .line 7952
    const-string v0, "HsumBootUserInitializer.init"

    .line 7953
    .line 7954
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7955
    .line 7956
    .line 7957
    invoke-virtual {v3, v2}, Lcom/android/server/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 7958
    .line 7959
    .line 7960
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7961
    .line 7962
    .line 7963
    :cond_78
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    .line 7964
    .line 7965
    .line 7966
    move-result v0

    .line 7967
    if-eqz v0, :cond_79

    .line 7968
    .line 7969
    const-string v0, "CommunalProfileInitializer.init"

    .line 7970
    .line 7971
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7972
    .line 7973
    .line 7974
    new-instance v0, Lcom/android/server/CommunalProfileInitializer;

    .line 7975
    .line 7976
    invoke-direct {v0}, Lcom/android/server/CommunalProfileInitializer;-><init>()V

    .line 7977
    .line 7978
    .line 7979
    invoke-virtual {v0, v2}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 7980
    .line 7981
    .line 7982
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7983
    .line 7984
    .line 7985
    goto/16 :goto_93

    .line 7986
    .line 7987
    :cond_79
    const-string v0, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    .line 7988
    .line 7989
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7990
    .line 7991
    .line 7992
    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    .line 7993
    .line 7994
    .line 7995
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7996
    .line 7997
    .line 7998
    :goto_93
    const-string/jumbo v0, "StartBootPhaseSystemServicesReady"

    .line 7999
    .line 8000
    .line 8001
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8002
    .line 8003
    .line 8004
    const-string/jumbo v0, "SystemServer"

    .line 8005
    .line 8006
    .line 8007
    const-string v5, "!@Boot_EBS_D: PHASE_SYSTEM_SERVICES_READY"

    .line 8008
    .line 8009
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8010
    .line 8011
    .line 8012
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8013
    .line 8014
    const/16 v5, 0x1f4

    .line 8015
    .line 8016
    invoke-virtual {v0, v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 8017
    .line 8018
    .line 8019
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8020
    .line 8021
    .line 8022
    const-string/jumbo v0, "MakeWindowManagerServiceReady"

    .line 8023
    .line 8024
    .line 8025
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8026
    .line 8027
    .line 8028
    :try_start_85
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_5e

    .line 8029
    .line 8030
    .line 8031
    goto/16 :goto_94

    .line 8032
    .line 8033
    :catchall_5e
    move-exception v0

    .line 8034
    const-string/jumbo v5, "making Window Manager Service ready"

    .line 8035
    .line 8036
    .line 8037
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8038
    .line 8039
    .line 8040
    :goto_94
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8041
    .line 8042
    .line 8043
    const-string/jumbo v0, "RegisterLogMteState"

    .line 8044
    .line 8045
    .line 8046
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8047
    .line 8048
    .line 8049
    :try_start_86
    invoke-static {v7}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_5f

    .line 8050
    .line 8051
    .line 8052
    goto/16 :goto_95

    .line 8053
    .line 8054
    :catchall_5f
    move-exception v0

    .line 8055
    const-string/jumbo v5, "RegisterLogMteState"

    .line 8056
    .line 8057
    .line 8058
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8059
    .line 8060
    .line 8061
    :goto_95
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8062
    .line 8063
    .line 8064
    const-class v5, Lcom/android/server/SystemService;

    .line 8065
    .line 8066
    monitor-enter v5

    .line 8067
    :try_start_87
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 8068
    .line 8069
    if-eqz v0, :cond_7a

    .line 8070
    .line 8071
    iget-object v8, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8072
    .line 8073
    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 8074
    .line 8075
    .line 8076
    sput-object v21, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 8077
    .line 8078
    goto/16 :goto_96

    .line 8079
    .line 8080
    :catchall_60
    move-exception v0

    .line 8081
    goto/16 :goto_a4

    .line 8082
    .line 8083
    :cond_7a
    :goto_96
    monitor-exit v5
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_60

    .line 8084
    if-eqz v6, :cond_7b

    .line 8085
    .line 8086
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8087
    .line 8088
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 8089
    .line 8090
    .line 8091
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8092
    .line 8093
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showRescuePartyDialog()V

    .line 8094
    .line 8095
    .line 8096
    :cond_7b
    const/4 v5, 0x0

    .line 8097
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    .line 8098
    .line 8099
    .line 8100
    move-result-object v0

    .line 8101
    new-instance v5, Landroid/util/DisplayMetrics;

    .line 8102
    .line 8103
    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8104
    .line 8105
    .line 8106
    invoke-virtual {v7}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 8107
    .line 8108
    .line 8109
    move-result-object v8

    .line 8110
    invoke-virtual {v8, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 8111
    .line 8112
    .line 8113
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8114
    .line 8115
    .line 8116
    move-result-object v8

    .line 8117
    invoke-virtual {v8, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 8118
    .line 8119
    .line 8120
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8121
    .line 8122
    .line 8123
    move-result-object v0

    .line 8124
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    .line 8125
    .line 8126
    .line 8127
    move-result v5

    .line 8128
    if-eqz v5, :cond_7c

    .line 8129
    .line 8130
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 8131
    .line 8132
    .line 8133
    :cond_7c
    const-string v0, "DualAppManagerService"

    .line 8134
    .line 8135
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8136
    .line 8137
    .line 8138
    :try_start_88
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 8139
    .line 8140
    if-eqz v0, :cond_7d

    .line 8141
    .line 8142
    invoke-static {}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_61

    .line 8143
    .line 8144
    .line 8145
    goto/16 :goto_97

    .line 8146
    .line 8147
    :catchall_61
    move-exception v0

    .line 8148
    const-string/jumbo v5, "making DualAppManagerService ready"

    .line 8149
    .line 8150
    .line 8151
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8152
    .line 8153
    .line 8154
    :cond_7d
    :goto_97
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8155
    .line 8156
    .line 8157
    const-string/jumbo v0, "StartPermissionPolicyService"

    .line 8158
    .line 8159
    .line 8160
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8161
    .line 8162
    .line 8163
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8164
    .line 8165
    const-class v5, Lcom/android/server/policy/PermissionPolicyService;

    .line 8166
    .line 8167
    const-string/jumbo v8, "MakePackageManagerServiceReady"

    .line 8168
    .line 8169
    .line 8170
    invoke-static {v0, v5, v2, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 8171
    .line 8172
    .line 8173
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 8174
    .line 8175
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 8176
    .line 8177
    .line 8178
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8179
    .line 8180
    .line 8181
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 8182
    .line 8183
    invoke-static {v0}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->packageWatchdogNoteBoot(Landroid/content/Context;)V

    .line 8184
    .line 8185
    .line 8186
    const-string/jumbo v0, "MakeASKSManagerServiceReady"

    .line 8187
    .line 8188
    .line 8189
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8190
    .line 8191
    .line 8192
    iget-object v0, v1, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    .line 8193
    .line 8194
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService;->systemReady()V

    .line 8195
    .line 8196
    .line 8197
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8198
    .line 8199
    .line 8200
    const-string/jumbo v0, "MakeDisplayManagerServiceReady"

    .line 8201
    .line 8202
    .line 8203
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8204
    .line 8205
    .line 8206
    :try_start_89
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 8207
    .line 8208
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_62

    .line 8209
    .line 8210
    .line 8211
    goto/16 :goto_98

    .line 8212
    .line 8213
    :catchall_62
    move-exception v0

    .line 8214
    const-string/jumbo v5, "making Display Manager Service ready"

    .line 8215
    .line 8216
    .line 8217
    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8218
    .line 8219
    .line 8220
    :goto_98
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8221
    .line 8222
    .line 8223
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8224
    .line 8225
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 8226
    .line 8227
    .line 8228
    const-string/jumbo v0, "StartDeviceSpecificServices"

    .line 8229
    .line 8230
    .line 8231
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8232
    .line 8233
    .line 8234
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 8235
    .line 8236
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8237
    .line 8238
    .line 8239
    move-result-object v0

    .line 8240
    const v5, 0x10700d1

    .line 8241
    .line 8242
    .line 8243
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8244
    .line 8245
    .line 8246
    move-result-object v5

    .line 8247
    array-length v8, v5

    .line 8248
    const/4 v9, 0x0

    .line 8249
    :goto_99
    if-ge v9, v8, :cond_7e

    .line 8250
    .line 8251
    move-object/from16 v21, v3

    .line 8252
    .line 8253
    aget-object v3, v5, v9

    .line 8254
    .line 8255
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8256
    .line 8257
    move-object/from16 v31, v4

    .line 8258
    .line 8259
    const-string/jumbo v4, "StartDeviceSpecificServices "

    .line 8260
    .line 8261
    .line 8262
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8263
    .line 8264
    .line 8265
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8266
    .line 8267
    .line 8268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8269
    .line 8270
    .line 8271
    move-result-object v0

    .line 8272
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8273
    .line 8274
    .line 8275
    :try_start_8a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8276
    .line 8277
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_63

    .line 8278
    .line 8279
    .line 8280
    move-object/from16 v32, v5

    .line 8281
    .line 8282
    goto/16 :goto_9a

    .line 8283
    .line 8284
    :catchall_63
    move-exception v0

    .line 8285
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8286
    .line 8287
    move-object/from16 v32, v5

    .line 8288
    .line 8289
    const-string/jumbo v5, "starting "

    .line 8290
    .line 8291
    .line 8292
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8293
    .line 8294
    .line 8295
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8296
    .line 8297
    .line 8298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8299
    .line 8300
    .line 8301
    move-result-object v3

    .line 8302
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8303
    .line 8304
    .line 8305
    :goto_9a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8306
    .line 8307
    .line 8308
    const/16 v18, 0x1

    .line 8309
    .line 8310
    add-int/lit8 v9, v9, 0x1

    .line 8311
    .line 8312
    move-object/from16 v3, v21

    .line 8313
    .line 8314
    move-object/from16 v4, v31

    .line 8315
    .line 8316
    move-object/from16 v5, v32

    .line 8317
    .line 8318
    goto :goto_99

    .line 8319
    :cond_7e
    move-object/from16 v21, v3

    .line 8320
    .line 8321
    move-object/from16 v31, v4

    .line 8322
    .line 8323
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8324
    .line 8325
    .line 8326
    if-eqz v13, :cond_7f

    .line 8327
    .line 8328
    const-string/jumbo v0, "SystemServer"

    .line 8329
    .line 8330
    .line 8331
    const-string/jumbo v3, "Not starting GameManagerService"

    .line 8332
    .line 8333
    .line 8334
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8335
    .line 8336
    .line 8337
    goto/16 :goto_9b

    .line 8338
    .line 8339
    :cond_7f
    const-string v0, "GameManagerService"

    .line 8340
    .line 8341
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8342
    .line 8343
    .line 8344
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8345
    .line 8346
    const-class v3, Lcom/android/server/app/GameManagerService$Lifecycle;

    .line 8347
    .line 8348
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 8349
    .line 8350
    .line 8351
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8352
    .line 8353
    .line 8354
    :goto_9b
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8355
    .line 8356
    .line 8357
    move-result-object v0

    .line 8358
    const-string/jumbo v3, "android.hardware.uwb"

    .line 8359
    .line 8360
    .line 8361
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8362
    .line 8363
    .line 8364
    move-result v0

    .line 8365
    if-eqz v0, :cond_80

    .line 8366
    .line 8367
    const-string/jumbo v0, "UwbService"

    .line 8368
    .line 8369
    .line 8370
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8371
    .line 8372
    .line 8373
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8374
    .line 8375
    const-string/jumbo v3, "com.android.server.uwb.UwbService"

    .line 8376
    .line 8377
    .line 8378
    const-string v4, "/apex/com.android.uwb/javalib/service-uwb.jar"

    .line 8379
    .line 8380
    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 8381
    .line 8382
    .line 8383
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8384
    .line 8385
    .line 8386
    :try_start_8b
    const-string/jumbo v0, "SamsungUwbService"

    .line 8387
    .line 8388
    .line 8389
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8390
    .line 8391
    .line 8392
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8393
    .line 8394
    const-string/jumbo v3, "com.samsung.android.server.uwb.SamsungUwbService"

    .line 8395
    .line 8396
    .line 8397
    const-string v4, "/system/framework/semuwb-service.jar"

    .line 8398
    .line 8399
    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 8400
    .line 8401
    .line 8402
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_64

    .line 8403
    .line 8404
    .line 8405
    goto/16 :goto_9c

    .line 8406
    .line 8407
    :catchall_64
    move-exception v0

    .line 8408
    const-string v3, "Failed to find class SamsungUwbService"

    .line 8409
    .line 8410
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8411
    .line 8412
    .line 8413
    :cond_80
    :goto_9c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingStackEnabled()Z

    .line 8414
    .line 8415
    .line 8416
    move-result v0

    .line 8417
    if-eqz v0, :cond_82

    .line 8418
    .line 8419
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8420
    .line 8421
    .line 8422
    move-result-object v0

    .line 8423
    const-string/jumbo v3, "android.hardware.uwb"

    .line 8424
    .line 8425
    .line 8426
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8427
    .line 8428
    .line 8429
    move-result v0

    .line 8430
    if-nez v0, :cond_81

    .line 8431
    .line 8432
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8433
    .line 8434
    .line 8435
    move-result-object v0

    .line 8436
    const-string/jumbo v3, "android.hardware.wifi.aware"

    .line 8437
    .line 8438
    .line 8439
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8440
    .line 8441
    .line 8442
    move-result v0

    .line 8443
    if-nez v0, :cond_81

    .line 8444
    .line 8445
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingCsEnabled()Z

    .line 8446
    .line 8447
    .line 8448
    move-result v0

    .line 8449
    if-eqz v0, :cond_82

    .line 8450
    .line 8451
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8452
    .line 8453
    .line 8454
    move-result-object v0

    .line 8455
    const-string/jumbo v3, "android.hardware.bluetooth_le"

    .line 8456
    .line 8457
    .line 8458
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8459
    .line 8460
    .line 8461
    move-result v0

    .line 8462
    if-eqz v0, :cond_82

    .line 8463
    .line 8464
    :cond_81
    const-string/jumbo v0, "RangingService"

    .line 8465
    .line 8466
    .line 8467
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8468
    .line 8469
    .line 8470
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8471
    .line 8472
    const-string/jumbo v3, "com.android.server.ranging.RangingService"

    .line 8473
    .line 8474
    .line 8475
    const-string v4, "/apex/com.android.uwb/javalib/service-ranging.jar"

    .line 8476
    .line 8477
    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 8478
    .line 8479
    .line 8480
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8481
    .line 8482
    .line 8483
    :cond_82
    const-string/jumbo v0, "StartBootPhaseDeviceSpecificServicesReady"

    .line 8484
    .line 8485
    .line 8486
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8487
    .line 8488
    .line 8489
    const-string/jumbo v0, "SystemServer"

    .line 8490
    .line 8491
    .line 8492
    const-string v3, "!@Boot_EBS_D: PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    .line 8493
    .line 8494
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8495
    .line 8496
    .line 8497
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8498
    .line 8499
    const/16 v3, 0x208

    .line 8500
    .line 8501
    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 8502
    .line 8503
    .line 8504
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8505
    .line 8506
    .line 8507
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 8508
    .line 8509
    .line 8510
    move-result v0

    .line 8511
    if-eqz v0, :cond_83

    .line 8512
    .line 8513
    const-string/jumbo v0, "MdfService"

    .line 8514
    .line 8515
    .line 8516
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8517
    .line 8518
    .line 8519
    :try_start_8c
    const-string/jumbo v0, "MdfService"

    .line 8520
    .line 8521
    .line 8522
    new-instance v3, Lcom/android/server/MdfService;

    .line 8523
    .line 8524
    invoke-direct {v3, v7}, Lcom/android/server/MdfService;-><init>(Landroid/content/Context;)V

    .line 8525
    .line 8526
    .line 8527
    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_65

    .line 8528
    .line 8529
    .line 8530
    goto/16 :goto_9d

    .line 8531
    .line 8532
    :catchall_65
    move-exception v0

    .line 8533
    const-string/jumbo v3, "SystemServer"

    .line 8534
    .line 8535
    .line 8536
    const-string v4, "Failed to add MdfService"

    .line 8537
    .line 8538
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8539
    .line 8540
    .line 8541
    :goto_9d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8542
    .line 8543
    .line 8544
    goto/16 :goto_9e

    .line 8545
    .line 8546
    :cond_83
    const-string/jumbo v0, "SystemServer"

    .line 8547
    .line 8548
    .line 8549
    const-string/jumbo v3, "MdfService is ready"

    .line 8550
    .line 8551
    .line 8552
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8553
    .line 8554
    .line 8555
    :goto_9e
    const-string/jumbo v0, "StartSafetyCenterService"

    .line 8556
    .line 8557
    .line 8558
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8559
    .line 8560
    .line 8561
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8562
    .line 8563
    const-string/jumbo v3, "com.android.safetycenter.SafetyCenterService"

    .line 8564
    .line 8565
    .line 8566
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8567
    .line 8568
    .line 8569
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8570
    .line 8571
    .line 8572
    const-string v0, "AppSearchModule"

    .line 8573
    .line 8574
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8575
    .line 8576
    .line 8577
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8578
    .line 8579
    const-string/jumbo v3, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    .line 8580
    .line 8581
    .line 8582
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8583
    .line 8584
    .line 8585
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8586
    .line 8587
    .line 8588
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    .line 8589
    .line 8590
    .line 8591
    const/4 v5, 0x0

    .line 8592
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8593
    .line 8594
    .line 8595
    move-result v0

    .line 8596
    if-eqz v0, :cond_84

    .line 8597
    .line 8598
    const-string v0, "IsolatedCompilationService"

    .line 8599
    .line 8600
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8601
    .line 8602
    .line 8603
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8604
    .line 8605
    const-string/jumbo v3, "com.android.server.compos.IsolatedCompilationService"

    .line 8606
    .line 8607
    .line 8608
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8609
    .line 8610
    .line 8611
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8612
    .line 8613
    .line 8614
    :cond_84
    const-string/jumbo v0, "StartMediaCommunicationService"

    .line 8615
    .line 8616
    .line 8617
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8618
    .line 8619
    .line 8620
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8621
    .line 8622
    const-string/jumbo v3, "com.android.server.media.MediaCommunicationService"

    .line 8623
    .line 8624
    .line 8625
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8626
    .line 8627
    .line 8628
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8629
    .line 8630
    .line 8631
    const-string v0, "AppCompatOverridesService"

    .line 8632
    .line 8633
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8634
    .line 8635
    .line 8636
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8637
    .line 8638
    const-class v3, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    .line 8639
    .line 8640
    const-string v4, "HealthConnectManagerService"

    .line 8641
    .line 8642
    invoke-static {v0, v3, v2, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 8643
    .line 8644
    .line 8645
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8646
    .line 8647
    const-string/jumbo v3, "com.android.server.healthconnect.HealthConnectManagerService"

    .line 8648
    .line 8649
    .line 8650
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8651
    .line 8652
    .line 8653
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8654
    .line 8655
    .line 8656
    const-string/jumbo v0, "SemContinuityService"

    .line 8657
    .line 8658
    .line 8659
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8660
    .line 8661
    .line 8662
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8663
    .line 8664
    const-class v3, Lcom/samsung/android/server/continuity/SemContinuityService;

    .line 8665
    .line 8666
    const-string/jumbo v4, "SemContextEngineService"

    .line 8667
    .line 8668
    .line 8669
    invoke-static {v0, v3, v2, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 8670
    .line 8671
    .line 8672
    :try_start_8d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8673
    .line 8674
    const-class v3, Lcom/samsung/android/server/contextengine/SemContextEngineService;

    .line 8675
    .line 8676
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_66

    .line 8677
    .line 8678
    .line 8679
    goto/16 :goto_9f

    .line 8680
    .line 8681
    :catchall_66
    move-exception v0

    .line 8682
    const-string/jumbo v3, "starting SemContextEngineService"

    .line 8683
    .line 8684
    .line 8685
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8686
    .line 8687
    .line 8688
    :goto_9f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8689
    .line 8690
    .line 8691
    :try_start_8e
    const-string/jumbo v0, "SemHwrsService"

    .line 8692
    .line 8693
    .line 8694
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8695
    .line 8696
    .line 8697
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8698
    .line 8699
    const-class v3, Lcom/samsung/android/server/hwrs/SemHwrsService;

    .line 8700
    .line 8701
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 8702
    .line 8703
    .line 8704
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_67

    .line 8705
    .line 8706
    .line 8707
    goto/16 :goto_a0

    .line 8708
    .line 8709
    :catchall_67
    move-exception v0

    .line 8710
    const-string/jumbo v3, "SemHwrsService startService failed"

    .line 8711
    .line 8712
    .line 8713
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8714
    .line 8715
    .line 8716
    :goto_a0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8717
    .line 8718
    const-string/jumbo v3, "android.software.device_lock"

    .line 8719
    .line 8720
    .line 8721
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8722
    .line 8723
    .line 8724
    move-result v0

    .line 8725
    if-eqz v0, :cond_85

    .line 8726
    .line 8727
    const-string v0, "DeviceLockService"

    .line 8728
    .line 8729
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8730
    .line 8731
    .line 8732
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8733
    .line 8734
    const-string/jumbo v3, "com.android.server.devicelock.DeviceLockService"

    .line 8735
    .line 8736
    .line 8737
    const-string v4, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    .line 8738
    .line 8739
    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 8740
    .line 8741
    .line 8742
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8743
    .line 8744
    .line 8745
    :cond_85
    const-string/jumbo v0, "StartSensitiveContentProtectionManager"

    .line 8746
    .line 8747
    .line 8748
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8749
    .line 8750
    .line 8751
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8752
    .line 8753
    const-class v3, Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 8754
    .line 8755
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 8756
    .line 8757
    .line 8758
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8759
    .line 8760
    .line 8761
    const-string/jumbo v0, "SystemServer"

    .line 8762
    .line 8763
    .line 8764
    const-string/jumbo v3, "start samsung apex services"

    .line 8765
    .line 8766
    .line 8767
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8768
    .line 8769
    .line 8770
    const-string/jumbo v0, "SemPrivilegeManagerService"

    .line 8771
    .line 8772
    .line 8773
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8774
    .line 8775
    .line 8776
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8777
    .line 8778
    const-string/jumbo v3, "com.android.server.privilege.SemPrivilegeManagerService"

    .line 8779
    .line 8780
    .line 8781
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8782
    .line 8783
    .line 8784
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8785
    .line 8786
    .line 8787
    const-string/jumbo v0, "SystemServer"

    .line 8788
    .line 8789
    .line 8790
    const-string/jumbo v3, "finish samsung apex services"

    .line 8791
    .line 8792
    .line 8793
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8794
    .line 8795
    .line 8796
    const-string/jumbo v0, "sys.config.hardcoder.enable"

    .line 8797
    .line 8798
    .line 8799
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 8800
    .line 8801
    .line 8802
    move-result-object v0

    .line 8803
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 8804
    .line 8805
    .line 8806
    move-result v0

    .line 8807
    if-eqz v0, :cond_86

    .line 8808
    .line 8809
    :try_start_8f
    const-string v0, "HardcoderService"

    .line 8810
    .line 8811
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8812
    .line 8813
    .line 8814
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 8815
    .line 8816
    const-string v3, "/system/framework/HardcoderService.jar"

    .line 8817
    .line 8818
    const-class v4, Lcom/android/server/SystemServer;

    .line 8819
    .line 8820
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8821
    .line 8822
    .line 8823
    move-result-object v4

    .line 8824
    invoke-direct {v0, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 8825
    .line 8826
    .line 8827
    const-string/jumbo v3, "com.samsung.android.hardcoder.HardcoderService"

    .line 8828
    .line 8829
    .line 8830
    invoke-virtual {v0, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8831
    .line 8832
    .line 8833
    move-result-object v0

    .line 8834
    const/4 v8, 0x2

    .line 8835
    new-array v3, v8, [Ljava/lang/Class;

    .line 8836
    .line 8837
    const-class v4, Landroid/content/Context;

    .line 8838
    .line 8839
    const/16 v19, 0x0

    .line 8840
    .line 8841
    aput-object v4, v3, v19

    .line 8842
    .line 8843
    const-class v4, Landroid/app/IActivityManager;

    .line 8844
    .line 8845
    const/16 v18, 0x1

    .line 8846
    .line 8847
    aput-object v4, v3, v18

    .line 8848
    .line 8849
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 8850
    .line 8851
    .line 8852
    move-result-object v0

    .line 8853
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8854
    .line 8855
    filled-new-array {v7, v3}, [Ljava/lang/Object;

    .line 8856
    .line 8857
    .line 8858
    move-result-object v3

    .line 8859
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 8860
    .line 8861
    .line 8862
    move-result-object v3

    .line 8863
    check-cast v3, Landroid/os/IBinder;

    .line 8864
    .line 8865
    iget-object v4, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8866
    .line 8867
    filled-new-array {v7, v4}, [Ljava/lang/Object;

    .line 8868
    .line 8869
    .line 8870
    move-result-object v4

    .line 8871
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 8872
    .line 8873
    .line 8874
    const-string v0, "HardcoderService"

    .line 8875
    .line 8876
    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8877
    .line 8878
    .line 8879
    const-string/jumbo v0, "SystemServer"

    .line 8880
    .line 8881
    .line 8882
    const-string v3, "HardcoderService loaded"

    .line 8883
    .line 8884
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_68

    .line 8885
    .line 8886
    .line 8887
    :goto_a1
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8888
    .line 8889
    .line 8890
    goto/16 :goto_a2

    .line 8891
    .line 8892
    :catchall_68
    move-exception v0

    .line 8893
    :try_start_90
    const-string/jumbo v3, "SystemServer"

    .line 8894
    .line 8895
    .line 8896
    const-string v4, "Failed to add HardcoderService."

    .line 8897
    .line 8898
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_69

    .line 8899
    .line 8900
    .line 8901
    goto :goto_a1

    .line 8902
    :catchall_69
    move-exception v0

    .line 8903
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8904
    .line 8905
    .line 8906
    throw v0

    .line 8907
    :cond_86
    :goto_a2
    const-string/jumbo v0, "connectivity"

    .line 8908
    .line 8909
    .line 8910
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8911
    .line 8912
    .line 8913
    move-result-object v0

    .line 8914
    move-object v8, v0

    .line 8915
    check-cast v8, Landroid/net/ConnectivityManager;

    .line 8916
    .line 8917
    move-object/from16 v18, v10

    .line 8918
    .line 8919
    move-object v10, v12

    .line 8920
    move-object v12, v15

    .line 8921
    iget-object v15, v1, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 8922
    .line 8923
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8924
    .line 8925
    move-object v3, v0

    .line 8926
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    .line 8927
    .line 8928
    move-object v4, v7

    .line 8929
    move v7, v6

    .line 8930
    move-object v6, v4

    .line 8931
    move-object/from16 v34, v3

    .line 8932
    .line 8933
    move v5, v13

    .line 8934
    move-object/from16 v13, v21

    .line 8935
    .line 8936
    move-object/from16 v17, v25

    .line 8937
    .line 8938
    move-object/from16 v21, v26

    .line 8939
    .line 8940
    move-object/from16 v19, v27

    .line 8941
    .line 8942
    move/from16 v3, v28

    .line 8943
    .line 8944
    move-object/from16 v4, v29

    .line 8945
    .line 8946
    move-object/from16 v9, v30

    .line 8947
    .line 8948
    move-object/from16 v33, v31

    .line 8949
    .line 8950
    invoke-direct/range {v0 .. v24}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/SemTelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V

    .line 8951
    .line 8952
    .line 8953
    move-object/from16 v3, v34

    .line 8954
    .line 8955
    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 8956
    .line 8957
    .line 8958
    const-string/jumbo v0, "LockSettingsThirdPartyAppsStarted"

    .line 8959
    .line 8960
    .line 8961
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8962
    .line 8963
    .line 8964
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 8965
    .line 8966
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8967
    .line 8968
    .line 8969
    move-result-object v0

    .line 8970
    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 8971
    .line 8972
    if-eqz v0, :cond_87

    .line 8973
    .line 8974
    invoke-virtual {v0}, Lcom/android/internal/widget/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 8975
    .line 8976
    .line 8977
    :cond_87
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8978
    .line 8979
    .line 8980
    const-string/jumbo v0, "StartSystemUI"

    .line 8981
    .line 8982
    .line 8983
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8984
    .line 8985
    .line 8986
    const-string/jumbo v0, "SystemServer"

    .line 8987
    .line 8988
    .line 8989
    const-string v1, "!@Boot_EBS_F: StartSystemUI"

    .line 8990
    .line 8991
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8992
    .line 8993
    .line 8994
    move-object/from16 v1, v33

    .line 8995
    .line 8996
    :try_start_91
    invoke-static {v6, v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_6a

    .line 8997
    .line 8998
    .line 8999
    goto/16 :goto_a3

    .line 9000
    .line 9001
    :catchall_6a
    move-exception v0

    .line 9002
    const-string/jumbo v1, "starting System UI"

    .line 9003
    .line 9004
    .line 9005
    invoke-static {v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9006
    .line 9007
    .line 9008
    :goto_a3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 9009
    .line 9010
    .line 9011
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 9012
    .line 9013
    .line 9014
    return-void

    .line 9015
    :goto_a4
    :try_start_92
    monitor-exit v5
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_60

    .line 9016
    throw v0

    .line 9017
    :goto_a5
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 9018
    .line 9019
    .line 9020
    throw v0

    .line 9021
    :catchall_6b
    move-exception v0

    .line 9022
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 9023
    .line 9024
    .line 9025
    throw v0

    .line 9026
    :catchall_6c
    move-exception v0

    .line 9027
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 9028
    .line 9029
    .line 9030
    move-result-object v1

    .line 9031
    const-string/jumbo v2, "dexopt"

    .line 9032
    .line 9033
    .line 9034
    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 9035
    .line 9036
    .line 9037
    throw v0

    .line 9038
    :goto_a6
    :try_start_93
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 9039
    .line 9040
    .line 9041
    throw v0

    .line 9042
    :catchall_6d
    move-exception v0

    .line 9043
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 9044
    .line 9045
    .line 9046
    throw v0
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_6e

    .line 9047
    :catchall_6e
    move-exception v0

    .line 9048
    const-string/jumbo v1, "System"

    .line 9049
    .line 9050
    .line 9051
    const-string v2, "******************************************"

    .line 9052
    .line 9053
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9054
    .line 9055
    .line 9056
    const-string/jumbo v1, "System"

    .line 9057
    .line 9058
    .line 9059
    const-string v2, "************ Failure starting core service"

    .line 9060
    .line 9061
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9062
    .line 9063
    .line 9064
    throw v0
.end method

.method public final startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "SystemServer"

    .line 16
    .line 17
    .line 18
    const-string/jumbo p1, "RotationResolverService is not configured on this device"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string/jumbo p1, "StartRotationResolverService"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 32
    .line 33
    const-class p1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const v0, 0x1040348

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "SystemServer"

    .line 11
    .line 12
    .line 13
    const-string/jumbo p1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string/jumbo p1, "StartSystemCaptionsManagerService"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 27
    .line 28
    const-class p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final startTextToSpeechManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "StartTextToSpeechManagerService"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8
    .line 9
    const-class v0, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "startWearableSensingService"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8
    .line 9
    const-class v0, Lcom/android/server/wearable/WearableSensingManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
