/**
 * Abstraction for calling Native UI Module functions it differs for Android and IOS
 * IOS does not need handler but for Android need to use ref and find node handler
 */
import { NativeModules, UIManager, Platform, findNodeHandle } from 'react-native'

/**
 * Invoke a native function
 * @param {*} moduleName Name of the native module
 * @param {*} functionName IOS uses function name
 * @param {*} functionId Android uses function ID
 * @param {*} ref ref for the element
 * @param {*} params Parameters that will send to native function
 */
export const invokeNativeUIFunction = (moduleName, functionName, functionId, ref, params) => {
  if (Platform.OS === 'ios') {
    const func = NativeModules[moduleName][functionName]
    func(params)
  } else {
    const handle = findNodeHandle(ref)
    UIManager.dispatchViewManagerCommand(handle, functionId, params)
  }
}